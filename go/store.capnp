# Code generated from shared schema. DO NOT EDIT.
using Go = import "/go.capnp";
@0xba385a997f42f53b;
$Go.package("schema");
$Go.import("go.trulyao.dev/hubble/web/schema");

struct Error {
	present @0 :Bool;
	message @1 :Text;
}

struct StoreGetRequest {
	key @0 :Text;
}

struct StoreGetResponse {
	value @0 :Text;
	exists @1 :Bool;
}

struct StoreSetRequest {
	key @0 :Text;
	value @1 :Text;
}

struct StoreSetResponse {
	value @0 :Text;
}

struct StoreDeleteRequest {
	key @0 :Text;
}

struct StoreDeleteResponse {
	key @0 :Text;
}

struct StoreAllResponse {
	keys @0 :List(Text);
}
