SED = gsed

UG = UserGuideJa
PG = ProgrammersGuideJa
UGPDF = $(UG).pdf
PGPDF = $(PG).pdf
UGDVI = $(UG).dvi
PGDVI = $(PG).dvi
UGSRC = $(UG).tex
PGSRC = $(PG).tex
UGIDX = $(UG).idx
PGIDX = $(PG).idx
UGIND = $(UG).ind
PGIND = $(PG).ind


all: $(UG)/$(UGPDF) $(PG)/$(PGPDF)


$(UG)/$(UGPDF): $(UG)/$(UGIND)
	$(SED) -i -e 's/%.*\\nofiles/\\nofiles/' $(UG)/$(UGSRC)
	touch $(UG)/$(UGIDX)
	touch $(UG)/$(UGIND)
	cd $(UG) && $(MAKE) $(UGPDF)

$(PG)/$(PGPDF): $(PG)/$(PGIND)
	$(SED) -i -e 's/%.*\\nofiles/\\nofiles/' $(PG)/$(PGSRC)
	touch $(PG)/$(PGIDX)
	touch $(PG)/$(PGIND)
	cd $(PG) && $(MAKE) $(PGPDF)


$(UG)/$(UGIND): $(UG)/$(UGIDX)
	cd $(UG) && $(MAKE) $(UGIND)
	$(SED) -i -e 's/\\hyperpage{P-\([0-9]\+\)}/\\href{ProgrammersGuideJa.pdf#page=P-\1}{P-\1}/g' $(UG)/$(UGIND)

$(PG)/$(PGIND): $(PG)/$(PGIDX)
	cd $(PG) && $(MAKE) $(PGIND)
	$(SED) -i -e 's/\\hyperpage{U-\([0-9]\+\)}/\\href{UserGuideJa.pdf#page=U-\1}{U-\1}/g' $(PG)/$(PGIND)


$(UG)/$(UGIDX) $(PG)/$(PGIDX): $(UG)/$(UGSRC) $(PG)/$(PGSRC)
	cd $(UG) && $(MAKE) $(UGDVI)
	cd $(PG) && $(MAKE) $(PGDVI)
	cat $(PG)/$(PGIDX) >> $(UG)/$(UGIDX)
	cp -a $(UG)/$(UGIDX) $(PG)/$(PGIDX)
	$(RM) $(UG)/$(UGIND) $(PG)/$(PGIND)


clean:
	cd $(UG) && $(MAKE) clean
	cd $(PG) && $(MAKE) clean
