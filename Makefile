build:
	clj -m cljs.main -t node -O none -d out -o lib_compiled/cljstest2.js -c cljstest2.core

run:
	NODE_PATH=./lib:./lib_compiled node main.js

clean:
	rm -rf .cpcache out lib_compiled/*

.PHONY: build run clean
