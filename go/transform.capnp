# Code generated from shared schema. DO NOT EDIT.
using Go = import "/go.capnp";
@0x90d62a8cf9a8762e;
$Go.package("schema");
$Go.import("go.trulyao.dev/hubble/web/schema");

struct TransformToMdResponse {
	markdown @0 :Text;
	plainText @1 :Text;
}
