BOARD ?= qemu_x86
BUILD_DIR ?= build

all:
	west build -b $(BOARD) -p always -d $(BUILD_DIR) .

run:
	west build -t run -d $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)
