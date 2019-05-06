# Commands
NAME = cheatsheet
LATEX = latexmk -xelatex -interaction=nonstopmode -bibtex -pvc -jobname=$(NAME)
DIR_OUTPUT = /tmp/Volatile

## Sources
SRC = $(NAME).tex

.PHONY	: all clean \
          essay

all 	: essay

essay 	:
	$(LATEX) $(SRC) > /dev/null

clean	:
	@-rm -f $(DIR_OUTPUT)/*
