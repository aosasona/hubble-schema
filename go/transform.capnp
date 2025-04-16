# Code generated from shared schema. DO NOT EDIT.
using Go = import "/go.capnp";
@0xe602f82367b51750;
$Go.package("schema");
$Go.import("go.trulyao.dev/hubble/web/schema");

struct TransformToMarkdownArgs {
	html @0 :Text;
	domain @1 :Text;
}
