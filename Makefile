BIN=node_modules/.bin

build:
	$(BIN)/babel src --out-dir lib && \
	$(BIN)/babel example/src --out-dir example/lib && \
	$(BIN)/webpack example/lib/app.js example/app.bundle.js -p

clean:
	rm -rf lib && rm -rf example/lib && rm -f example/app.bundle.js

PHONY: build clean





