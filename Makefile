# Commands
NAME = cheatsheet
LATEX = xelatex -file-line-error -synctex=1 -interaction=nonstopmode -shell-escape -recorder
DIR_OUTPUT = /tmp/Volatile

## Sources
SRC = $(NAME).tex

.PHONY	: all clean \
          cheatsheet

all 	: cheatsheet

cheatsheet 	:
	$(LATEX) $(SRC)

clean	:
	@-rm -f $(NAME).pdf
