SRCS = $(wildcard src/*)
OUTS = $(subst src,dist,$(basename $(SRCS)))
PDF_ENGINE = pdflatex

pdf: $(addsuffix .pdf,$(OUTS))

html: $(addsuffix .html,$(OUTS))

docx: $(addsuffix .docx,$(OUTS))

# main recipes
dist/%: src/%
	cp $< $@

dist/%.pdf: src/%.*
	pandoc --pdf-engine=$(PDF_ENGINE) $< -o $@

dist/%.html: src/%.*
	pandoc $< -o $@

dist/%.docx: src/%.*
	pandoc $< -o $@

# for testing purposes
.PHONY: print-%
print-%: ; @echo $* = $($*)

# cleaning
.PHONY: clean super-clean
clean:
	-rm ./dist/*

super-clean:
	-rm ./dist/*
	-rm ./img/*
	-rm ./src/*
