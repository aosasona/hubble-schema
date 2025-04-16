@0xfdb92caa514d8128;

enum NetworkMethod {
  GET @0;
  POST @1;
}

struct NetworkRequest {
  method @0 :NetworkMethod;
  url @1 :Text;
  headers @2 :List(Text);
  body @3 :Text;
}

struct NetworkResponse {
  status @0 :Int32;
  headers @1 :List(Text);
  body @2 :Text;
}
