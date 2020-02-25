BUILD_DIR = BUILD
BUILD_DIR_DEV = site
SERVER_PORT = 1987
SERVER_ADDR = 127.0.0.1

default: reset

.PHONY: build clean start

build:
	mdz build $(BUILD_DIR) .

clean:
	mdz clean $(BUILD_DIR) && mdz clean $(BUILD_DIR_DEV)

start:
	mdz serve $(SERVER_PORT) 127.0.0.1 $(BUILD_DIR)

start-dev:
	mdz serve $(SERVER_PORT) 127.0.0.1 $(BUILD_DIR_DEV)

watch:		
	mdz watch