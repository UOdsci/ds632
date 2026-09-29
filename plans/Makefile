MATHJAX = https://cdn.jsdelivr.net/npm/mathjax@4/tex-mml-chtml.js

%.html : %.md plans.css
	pandoc --standalone --math-method=mathjax:$(MATHJAX) $< -o $@
