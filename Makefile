
TARGET=git-basics

$(TARGET).pdf: $(TARGET).tex
	pdflatex -halt-on-error $< > /dev/null || pdflatex -halt-on-error $<
	pdflatex -halt-on-error $< > /dev/null

clean:
	rm -f $(TARGET).pdf $(TARGET).eps $(TARGET).ps $(TARGET).aux $(TARGET).log $(TARGET).nav $(TARGET).snm $(TARGET).toc $(TARGET).out $(TARGET).vrb
