OUT=out
GCC=g++
QMINER_ROOT=/var/qminer/qminer
COMPILE_FLAGS= -std=c++11 -fPIC -Wall -Wno-unknown-pragmas -Wsign-compare -Wpointer-arith -Wcast-align
LINK_FLAGS= -lssl -llz4 -lm -lcrypto -lz -ldl -lpthread -lrt -fopenmp -lpq
INCLUDES= -I$(QMINER_ROOT)/src/glib/base -I$(QMINER_ROOT)/src/glib/mine -I$(QMINER_ROOT)/src/glib/misc -I$(QMINER_ROOT)/src/glib/concurrent -I$(QMINER_ROOT)/src/qminer

# change this to Debug if you are using debug build
QMINER_BUILD=Release

main: release

# release target turns on compiler optimizations and disables debugging asserts
release: COMPILE_FLAGS += -DNDEBUG -O3
release: $(OUT)/demo_app

# debug target turns on crash debugging, get symbols with <prog> 2>&1 | c++filt
debug: COMPILE_FLAGS += -DDEBUG -O0 -g -ggdb
debug: LINK_FLAGS += -rdynamic
debug: $(OUT)/demo_app

prepare:
	mkdir -p $(OUT)

$(OUT)/demo_app: prepare $(OUT)/demo_app.o
	$(GCC) $(COMPILE_FLAGS) $(INCLUDES) \
		$(OUT)/demo_app.o \
		$(QMINER_ROOT)/build/$(QMINER_BUILD)/glib.a \
		$(QMINER_ROOT)/build/$(QMINER_BUILD)/qminer.a \
		-o $(OUT)/demo_app \
		$(LINK_FLAGS)

$(OUT)/demo_app.o: demo_app.cpp
	$(GCC) $(COMPILE_FLAGS) $(INCLUDES) -c demo_app.cpp -o $(OUT)/demo_app.o $(LINK_FLAGS)

clean:
	rm -rf $(OUT)

