@0xc8f75d7ba2741b88;

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
	wordDocument @7;
	presentation @8;
	spreadsheet @9;
	html @10;
	markdown @11;
	plainText @12;
	archive @13;
	code @14;
	comment @15;
	other @16;
}

struct Queue {
	status @0 :Status;
	queuedAt @1 :Int64;
}

struct Collection  {
	id @0 :Text;
	name @1 :Text;
	slug @2 :Text;
}

struct Owner {
	username @0 :Text;
	firstName @1 :Text;
	lastName @2 :Text;
}

struct Entry {
	id @0 :Text;
	name @1 :Text;
	content @2 :Text;
	version @3 :Int32;
	type @4 :Type;
	collection @5 :Collection;
	owner @6 :Owner;
	createdAt @7 :Int64;
	queue @8 :Queue;
	filesizeBytes @9 :Int64;
}
