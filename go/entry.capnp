# Code generated from shared schema. DO NOT EDIT.
using Go = import "/go.capnp";
@0xb802a484902eba38;
$Go.package("schema");
$Go.import("go.trulyao.dev/hubble/web/schema");

enum Status {
	queued @0;
	processing @1;
	completed @2;
	failed @3;
	canceled @4;
	paused @5;
}

enum Type {
	link @0;
	audio @1;
	video @2;
	image @3;
	pdf @4;
	interchange @5;
	epub @6;
	word_document @7;
	presentation @8;
	spreadsheet @9;
	html @10;
	markdown @11;
	plain_text @12;
	archive @13;
	code @14;
	comment @15;
	other @16;
}

struct Queue {
	status @0 :Status;
	attempts @1 :Int8;
	payload @2 :Data;
	queued_at @3 :Int64;
}

struct Collection  {
	id @0 :Text;
	name @1 :Text;
	slug @2 :Text;
}

struct Owner {
	username @0 :Text;
	first_name @1 :Text;
	last_name @2 :Text;
}

struct Entry {
	id @0 :Text;
	name @1 :Text;
	content @2 :Text;
	version @3 :Int32;
	type @4 :Type;
	collection @5 :Collection;
	owner @6 :Owner;
	created_at @7 :Int64;
	queue @8 :Queue;

	# file size in bytes (only present if type is not link)
	size :union {
		bytes @9 :Int64;
		none @10 :Void;
	}
}
