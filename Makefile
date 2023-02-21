JOBNAME = module-name-report
COMPILE = pdflatex -jobname=$(JOBNAME) report

all:
	$(COMPILE)
	bibtex $(JOBNAME)
	$(COMPILE)
	$(COMPILE)
clean:
	rm -rf *.aux *.toc *.log *.out *.bbl *.blg chapters/*.aux
