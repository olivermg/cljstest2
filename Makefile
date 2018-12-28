npm-install:
	npm install

clj-build:
	clj -m cljs.main -t node -O none -d out -o lib_compiled/cljstest2.js -c cljstest2.core

lein-deps:
	lein cljsbuild once || true   # just download dependencies

lein-build:
	lein cljsbuild once

run:
	NODE_PATH=./lib:./lib_compiled node main.js

clean:
	rm -rf .cpcache out lib_compiled/*
	lein clean

.PHONY: init clj-build lein-deps lein-build run clean
