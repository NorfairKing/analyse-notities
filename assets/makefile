GRAPHVIZCC  = dot
DOT_EXT     = dot
OUT_FORMAT  = eps
OUT_EXT     = eps

ILLUSTRATIONS = compact.eps

all: graphviz_illustrations

graphviz_illustrations: $(ILLUSTRATIONS)

%.$(OUT_EXT): %.$(DOT_EXT)
	$(GRAPHVIZCC) -T$(OUT_FORMAT) $< -o $@

