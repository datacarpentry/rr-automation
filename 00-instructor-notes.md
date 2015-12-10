## Automation

These notes intend to describe the motivation, and the overall content of this
repository to help instructors teach this lesson.

The main goal of this lesson is to teach participants how turning each piece of
their analysis into a function would make their life easier by (1) making clear
the origin of each dataset used in the analysis; (2) making easier to generate
the intermediate pieces of the manuscript to share with their colleagues; (3)
taking advantage of the infrastructure already available to write documentation
and tests for the code.

The lesson is centered around transforming a manuscript that is written such
that all the code is linear, duplicated, and completely integrated with the text
of the manuscript, into a manuscript where each piece is written into a
function, and most of the code is taken out into a different part of the
repository.

While teaching this lesson, the organization of the project should be emphasized
to demonstrate how having everything in the correct place facilitates the
automation of building the mansucript. The code is written such that if
additional data files where provided, the manuscript would still build and the
numbers/graphs would be updated automatically.

## Presentation of the manuscript

The manuscript was written to include sufficiently complicated that it makes the
automation worthwhile and necessitates intermediate datasets to be able to
obtain the results.

The manuscript compares the rate of change in life expectancy between two time
periods for each of the continent. A few interesting points of this are:
- increase in life expectency is slowing down for most continent
- in Africa, rate of change in life expectency is almost flat (due to AIDS
epidemics)
- in Oceania, increase in life expectency is accelerating.

To do this, we compare the linear trend between two time periods. The cutoff
year for these time period is controlled by a variable in the manuscript that
participants can change (and should change so they can witness how the numbers
and graphs get updated).
