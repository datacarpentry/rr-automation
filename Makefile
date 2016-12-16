.PHONY := handout

handout: example-manuscript/handout.R

handout-%.R: %.Rmd
	Rscript -e "knitr::purl('$<', output='$@', documentation=0L)"

example-manuscript/handout.R: handout-01-automation.R handout-02-functions.R handout-03-functions-for-data.R handout-04-functions-for-figures.R handout-05-testing.R handout-06-automating.R
	for f in $^; do cat $$f; echo "\n"; done > $@
	make clean-handout

clean-handout:
	-rm handout-*-*.R