DOCX=$(shell ls *.txt *.news | sed -e 's/.txt$$/.docx/' -e 's/.news$$/.docx/')
LASTDOCUMENT=$(shell ls -1tr *.news |tail -1)


.PHONY : all
.PHONY : last

last : $(subst .news,.docx,$(LASTDOCUMENT)) 



all : $(DOCX)

jeeva%.docx : jeeva%.txt
#libreoffice --headless --convert-to docx $<
#abiword --to docx $<
	sed -e 's/</\\</g' $< |pandoc -o $@
	libreoffice --invisible --nofirststartwizard --headless --norestore $@ "macro:///Standard.Module1.autoJeeva"

#There is a problem with < or ee as it seems to be interpreted...



thiru%.docx : thiru%.txt
	sed -e 's/</\\</g' $< |pandoc -o $@
	libreoffice --invisible --nofirststartwizard --headless --norestore $@ "macro:///Standard.Module1.autoJeeva"

ponni%.docx : ponni%.txt
	sed -e 's/</\\</g' $< |pandoc -o $@
	libreoffice --invisible --nofirststartwizard --headless --norestore $@ "macro:///Standard.Module1.autoJeeva"


%.docx : %.txt
#libreoffice --headless --convert-to docx $<
	pandoc $< -o $@ 

sk%.docx : sk%.news
	./addDetails_sk.sh $< | pandoc -o $@
	libreoffice --invisible --nofirststartwizard --headless --norestore $@ "macro:///Standard.Module1.autoNakDinak"

nak%.docx : nak%.news
	./addDetails_nak.sh $< | pandoc -o $@
	libreoffice --invisible --nofirststartwizard --headless --norestore $@ "macro:///Standard.Module1.autoNakDinak"

jeeva%.docx : jeeva%.news
	#./addDetails_jeeva.sh  $< | unicode2bamini.sh | sed -e 's/</\\</g' -e 's/\\/\\\\/g' -e 's/\$$/fC/g'|pandoc -o $@
	./addDetails_jeeva.sh  $< | toBamini | sed -e 's/</\\</g' -e 's/\\/\\\\/g' -e 's/\$$/fC/g'|pandoc -o $@
		# fC is koo nedil  we would later replace it in the libreoffice...
	libreoffice --invisible --nofirststartwizard --headless --norestore $@ "macro:///Standard.Module1.autoJeeva"

jawahar%.docx : jawahar%.news
	./addDetails_jawahar.sh  $< | toBamini | sed -e 's/</\\</g' -e 's/\\/\\\\/g' -e 's/\$$/fC/g'|pandoc -o $@
	libreoffice --invisible --nofirststartwizard --headless --norestore $@ "macro:///Standard.Module1.autoJeeva"

thiru%.docx : thiru%.news
	./addDetails_thiruvenkadu.sh  $< | toBamini | sed -e 's/</\\</g' -e 's/\\/\\\\/g' -e 's/\$$/fC/g'|pandoc -o $@
	libreoffice --invisible --nofirststartwizard --headless --norestore $@ "macro:///Standard.Module1.autoJeeva"

ponni%.docx : ponni%.news
	./addDetails_ponni.sh  $< | toBamini | sed -e 's/</\\</g' -e 's/\\/\\\\/g' -e 's/\$$/fC/g'|pandoc -o $@

	libreoffice --invisible --nofirststartwizard --headless --norestore $@ "macro:///Standard.Module1.autoJeeva"


sk%.txt : sk%.news
#cat $< |aspell -l ta list | sort | uniq -c | sort -rn  > mistakes.list
	./addDetails_sk.sh $< > $@

jeeva%.txt : jeeva%.news
#cat $< |aspell -l ta list | sort | uniq -c | sort -rn  > mistakes.list
	./addDetails_jeeva.sh  $< | toBamini > $@


thiru%.txt : thiru%.news
	./addDetails_thiruvenkadu.sh $< | toBamini > $@


nak%.txt : nak%.news
	cat $< |aspell -l ta list | sort | uniq -c | sort -rn  > mistakes.list
	./addDetails_nak.sh $< > $@


ponni%.txt : ponni%.news
	./addDetails_ponni.sh $< | toBamini > $@
