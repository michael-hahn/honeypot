all:
	pdflatex paper.tex
	pdflatex paper.tex
	bibtex paper.aux
	pdflatex  paper.tex
	pdflatex paper.tex
	mkdir -p output
	cp -f ./paper.pdf ./output/honeypot-2018.pdf

clean:
	rm -f ./paper.pdf
	rm -f ./paper.aux
	rm -f ./paper.log
	rm -f ./paper.out
	rm -f ./paper.bbl
	rm -f ./paper.blg
	rm -f ./paper.ent
	rm -rf ./output
