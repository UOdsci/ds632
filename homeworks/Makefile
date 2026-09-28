include ../rules.mk

# Automatic solution inclusion/exclusion

%.Rmd : %.gpp.Rmd
	gpp -T $< > $@

%.solutions.Rmd : %.gpp.Rmd
	# see https://randomdeterminism.wordpress.com/2012/06/01/how-i-stopped-worring-and-started-using-markdown-like-tex/
	# BUT:  wrap things to appear in solutions in
	#       \ifdef{SOLUTIONS}
	#       \endif
	gpp -T -DSOLUTIONS -DRUBRIC $< > $@
