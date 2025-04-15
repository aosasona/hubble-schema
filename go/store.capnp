# Code generated from shared schema. DO NOT EDIT.
using Go = import "/go.capnp";
@0xf43b9b786d9ecea1;
$Go.package("schema");
$Go.import("go.trulyao.dev/hubble/web/schema");

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
