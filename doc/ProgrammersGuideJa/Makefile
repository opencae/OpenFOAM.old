TEX = uplatex
DVIPDF = dvipdfmx -V 5
MAKEINDEX = upmendex -g
SED = gsed

TITLE = ProgrammersGuideJa
CLS = OFbook.cls
STY = OFmacros.sty
IST = OFindex.ist
INCLUDES = copyright.tex CreativeCommons.tex trademarks.tex \
	chapter1.tex chapter2.tex chapter3.tex
TBL = tbl/*.tex

SRC = $(TITLE).tex
DVI = $(TITLE).dvi
PDF = $(TITLE).pdf
LOG = $(TITLE).log
IND = $(TITLE).ind
IDX = $(TITLE).idx
CHANGED = grep '^LaTeX Warning: Label(s) may have changed.' $(LOG)



$(PDF): $(DVI)
	$(DVIPDF) -o $@ $<


$(DVI): $(IND)
	$(TEX) $(SRC)
	(while $(CHANGED); do $(TEX) $(SRC); done)
	touch $(IND)


$(IND): $(IDX)
	$(MAKEINDEX) -s $(IST) $<


$(IDX): $(SRC) $(INCLUDES) $(CLS) $(STY) $(TBL)
	$(SED) -i -e 's/^[^%]*\\nofiles/% \\nofiles/' $(SRC)
	$(TEX) $(SRC)
	(while $(CHANGED); do $(TEX) $(SRC); done)


clean:
	$(RM) *.aux *.dvi *.idx *.ilg *.ind *.log *.out *.toc *.*-e
