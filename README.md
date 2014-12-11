rr-automation
=============

Resources for automation tutorials

## Functionalize/Modularize functions

Go through exercise of transforming scripts into functions

Take the code out of the Rmarkdown file into several files:
- knitr file: manuscript + chunks that run functions
- all R functions in the `code/` folder



## Let's build R scripts that simulate the make process

### For building

`make_data()` for processing the raw data

`make_figure()` for going from processed data to figure

`make_manuscript()` for compiling the `.Rmd`

### For cleaning

`make_clean_data()` removes all the data files generated by the data analysis
process.

`make_clean_manuscript()` removes `.pdf`, `.html`,  and `.md` files.

`make_clean_figures()` removes all the figures.

`make_clean()` does the 3 above.

Activity: give them a script that does the cleaning of the data for instance
(the `make_clean_data()`), and have them use it as a template to create the
other functions.

## Intro to make

Motivates by only rebuilding based on the files that have changed. Only based on
timestamp (when the file was modified, not on content)

Works best if you have good file/data organization, so the change in the raw
files only propagates to the relevant targets.

Only a demonstration, provide participants with ready to use Makefile

Make sure that participants with Windows will be able to run them.

Clarify that make alone regenerates results, but does not ensure reproducibility, in that without good 
documentation, other users will still not be able to understand what you have done.

## Demonstrate Travis-CI

Present a flow diagram that shows how local computer, github and travis-ci are
connected.

Make a demonstration that uses travis-ci to check that the manuscript builds
correctly. Ideally, make a modification to one of the file that causes the
Makefile to fail, show how the badge goes red on github, fix the error, and show
how the badge goes green again.




### Exercises to go through the class with:

	scripts to functions:
	
	clean directories
	
	make new from clean (or make from the instance of only one file updated?)
	
	intergrate R code with Travis to ensure that nothing has broken between the last change and the new make



## Resources

- Karl's Broman [introduction to GNU Make](http://kbroman.org/minimal_make/).
- Software Carpentry [Make lesson](http://software-carpentry.org/v4/make/index.html)
