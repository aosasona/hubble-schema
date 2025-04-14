-- Read all the capnp schema files in ./schema
local function read_schema_files()
	local schema_files = {}
	for file in io.popen("ls ./shared/*.capnp"):lines() do
		local file_name = file:match("([^/]+)$")
		table.insert(schema_files, file_name)
	end
	return schema_files
end

local function generate_go_schemas()
	local files = read_schema_files()
	for _, file in ipairs(files) do
		local path = "./shared/" .. file
		-- Generate the capnp id using `capnp id` command and then trim the output
		local file_id = io.popen("capnp id "):read("*a"):gsub("%s+", "")

		local header = '# Code generated from shared schema. DO NOT EDIT.\nusing Go = import "/go.capnp";\n'
			.. file_id
			.. ';\n$Go.package("schema");\n$Go.import("go.trulyao.dev/hubble/web/schema");\n'

		local handle = io.open(path, "r")
		if not handle then
			print("Error: Could not open file " .. path)
			return
		end

		local content = handle:read("*a")
		handle:close()

		-- Remove the ID for the content (trim the first line)
		content = content:gsub("^[^\n]*\n", "")

		local new_schema = header .. content

		local output_path = "./go/" .. file
		local output_handle = io.open(output_path, "w")
		if not output_handle then
			print("Error: Could not open file " .. output_path)
			return
		end

		output_handle:write(new_schema)
		output_handle:close()

		print("Generated Go schema for " .. file .. " at " .. output_path)
	end
end

local files = read_schema_files()
print("Found " .. #files .. " schema files:")
for _, file in ipairs(files) do
	print(" - " .. file)
end
print("Generating Go schemas...")
generate_go_schemas()
