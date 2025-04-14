@0xb9e89c17977476da;

struct Error {
	present @0 :Bool;
	message @1 :Text;
}

interface Store {
	get @0 (key :Text) -> (value :Text);
	set @1 (key :Text, value :Text) -> (value :Text);
	delete @2 (key :Text);
	all @3 () -> (keys :List(Text));
	clear @4 ();
}
