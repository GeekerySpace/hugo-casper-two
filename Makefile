.PHONY: build clean clobber demo

SOURCES := $(shell find _src -type f \( -name '*.coffee' -o -name '*.sass' \))
TARGETS := $(SOURCES:_src/%=%)
TARGETS := $(TARGETS:%.coffee=%.js)
TARGETS := $(TARGETS:%.sass=%.css)

build: $(TARGETS)

demo: build
	hugo serve -D -s exampleSite --themesDir ../../

clean:
	-cd exampleSite && rm -r resources public
clobber: clean
	-rm $(TARGETS)

TARGET_DIRS := $(sort $(dir $(TARGETS))) # sort removes duplicates
$(TARGET_DIRS):
	-mkdir -p $@
.SECONDEXPANSION:
$(filter %.css,$(TARGETS)): %.css : _src/%.sass | $$(@D)
	sass -C -I ~/my/lib/css --sourcemap=none $< $@
$(filter %.js,$(TARGETS)): %.js : _src/%.coffee | $$(@D)
	sass -C -I ~/my/lib/css --sourcemap=none $< $@
