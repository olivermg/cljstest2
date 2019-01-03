// load js stuff:
const express = require('express');
const Foo = require('foo');


// load cljs stuff:
//require('./out/goog/bootstrap/nodejs.js');
require('cljstest2');
//require('./out/cljstest2/core.js');
//console.log(cljstest2);


// setup web app:

const app = express();
const port = process.env.PORT || 5000;

app.get('/', (req, res) => {
    // call js stuff:
    Foo.foo();

    // call cljs stuff:
    cljstest2.core.bar();
    const r1 = cljstest2.baz.fun2(123);
    console.log(r1);
    res.send('Hello World!');
});

app.listen(
    port,
    () => console.log(`App listening on port ${port}.`)
);
