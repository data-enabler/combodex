PROTOS=src/*.proto

protos: $(PROTOS)
	mkdir -p src-gen/js
	mkdir -p src-gen/go
	protoc \
		--js_out=src-gen/js \
		--go_out=src-gen/go \
		--proto_path=src \
		$(PROTOS)

