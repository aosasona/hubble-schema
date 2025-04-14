# Code generated from shared schema. DO NOT EDIT.
using Go = import "/go.capnp";
@0xf142a050eb28bac8;
$Go.package("schema");
$Go.import("go.trulyao.dev/hubble/web/schema");

struct Entry {
	id @0 :Text;
	name @1 :Text;
}
