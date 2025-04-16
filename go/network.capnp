# Code generated from shared schema. DO NOT EDIT.
using Go = import "/go.capnp";
@0xac0cab439931ba17;
$Go.package("schema");
$Go.import("go.trulyao.dev/hubble/web/schema");

enum NetworkMethod {
	get @0;
	post @1;
}

struct NetworkRequest {
	method @0 :NetworkMethod;
	url @1 :Text;
	headers @2 :List(Text);
	body @3 :Text;
}

struct NetworkHeader {
	key @0 :Text;
	value @1 :List(Text);
}

struct NetworkResponse {
	status @0 :Int32;
	headers @1 :List(NetworkHeader);
	body @2 :Text;
}
