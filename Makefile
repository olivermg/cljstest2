build:
	clj -m cljs.main -t node -O none -d out -o lib/cljstest2.js -c cljstest2.core

run:
	NODE_PATH=./lib node main.js

clean:
	rm -rf .cpcache out lib/cljstest2.js

.PHONY: build clean
