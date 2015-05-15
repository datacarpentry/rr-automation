handout-%.R: %.Rmd
	Rscript -e "knitr::purl('$<', output='$@', documentation=0L)"

example-manuscript/handout.R: handout-01-automation.R handout-02-functions-for-figures.R handout-03-functions-for-data.R handout-04-testing.R handout-05-getting-organized.R
	for f in $^; do cat $$f; echo "\n"; done > $@
	make clean-handout

clean-handout:
	-rm handout-*-*.R
