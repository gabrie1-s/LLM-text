.PHONY: pdf watch clean

pdf:
	latexmk main.tex

watch:
	latexmk -pvc -view=none main.tex

clean:
	latexmk -c main.tex
