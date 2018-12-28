//require('./out/goog/bootstrap/nodejs.js');
require('cljstest2');
console.log(cljstest2);
//require('./out/cljstest2/core.js');

const Foo = require('foo');

Foo.foo();
cljstest2.core.bar();
const r1 = cljstest2.baz.fun2(123);
console.log(r1);
