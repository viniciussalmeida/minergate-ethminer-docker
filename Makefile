.PHONY: build

build:
	docker \
		build . \
	   	--force-rm \
	   	--rm \
	   	-t vyscond/minergate-ethminer:latest 
