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
	$(LATEX) $(SRC) > /dev/null
	# run again to get the references right
	$(LATEX) $(SRC)

clean	:
	rm -f $(NAME).pdf
	rm -f $(NAME).aux
	rm -f $(NAME).fls
	rm -f $(NAME).log
	rm -f $(NAME).synctex.gz
	rm -f $(NAME).xdv
