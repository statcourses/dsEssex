
<!-- README.md is generated from README.Rmd. Please edit this file -->

# Teaching Data Science for Beginners

## By [Osama Mahmoud](https://www.essex.ac.uk/people/abdel02200/osama-mahmoud)

[![Build
Status](https://travis-ci.com/statcourses/dsEssex.svg?branch=main)](https://travis-ci.com/statcourses/dsEssex)
[![License: GPL
v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

<img src="img/dsEssex-logo.png" width="200px" />

The `dsEssex` is an R package containing data examples and helpful tools
for teaching Data Science to beginner learners.

- [Overview](#overview)
- [System Requirements](#system-requirements)
- [Installation Guide](#installation-guide)
- [Testing the Package](#testing-the-package)
- [License](#license)
- [Contact](#contact)
- [Issues](https://github.com/statcourses/dsEssex/issues)

# Overview

This R package provides datasets, case-studies, functions, and exercises
that can be used for teaching Data Science to students with no/little
statistical and/or programming backgrounds. This is originally created
to facilitate the delivery of the [MSc Applied Data
Science](https://www.essex.ac.uk/courses/pg01389/1/msc-applied-data-science)
and [MSc Data Science and its
Applications](https://www.essex.ac.uk/courses/pg01404/1/msc-data-science-and-its-applications)
at the University of Essex, United Kingdom. However, it can be also used
for teaching R programming and data science to both undergraduate and
postgraduate students in other Data Science programmes.

# System Requirements

## Hardware requirements

The `dsEssex` R package should be smoothly installed and working well
with most of the standard computers.

## Software requirements

The `dsEssex` R package is supported for *Windows*, *Linux* and *macOS*.
The package has been tested in R under the following systems: + Linux:
Ubuntu 16.04 (R 3.6.1) + macOS: Mojave 10.14.6 (R 3.6.1) + Windows: 10
(R 3.6.3)

# Installation Guide

The `dsEssex` R package includes a variety of *data examples*,
*case-studies*, *R package dependencies* and *practical sheets* that can
facilitate teaching data science in lectures, labs, workshops, and
classes. The easiest way to install the `dsEssex` R package is by
running the following code lines into your R session:

``` r
# required only once per machine!
if(!require("remotes")) install.packages("remotes")
remotes::install_github("statcourses/dsEssex")
```

## R Dependencies

This software requires `R (>= 3.5.0)`. If you do have an older version
of R installed on your machine, you may need to install the latest R
version [from here](https://cloud.r-project.org/).

Installing the `dsEssex` R package will automatically install the
following dependencies that are required for most Data Science labs,
classes and workshops:

    tidyverse
    dslabs
    dplyr
    stringr
    ggplot2
    tidytext
    textdata
    english
    tidyr
    jsonlite
    lubridate
    scales

# Testing the Package

Get started with loading a few data sets by running the following:

``` r
# load the package into your R session
require(dsEssex)

# load data of Donald Trump's twitter account from 2009 to 2021
data(Trump_tweets)

# display the first few rows of the data
head(Trump_tweets)

# display description of the data
help(Trump_tweets)

# load the index page that lists all the components of the package
help(package = dsEssex)
```

## Data example for string processing and text analytics

For simple string processing and text analytic exercises, you may load
the daily mortality data for Puerto Rico, the USA territory, extracted
for the month of October through a number of years (2015-2018) from
[this pdf
file](https://raw.githubusercontent.com/statcourses/dsEssex/main/Extra-materials/PR-Mortality.pdf).
This file was downloaded from the `dslabs` R package by Rafael A.
Irizarry.

``` r
# load the package into your R session
require(dsEssex)

# load the raw daily mortality data for October extracted from the pdf file
data(PR_Oct_Deaths)

# display the data
PR_Oct_Deaths
```

# License

This project is covered under the **GNU General Public License, version
3.0 (GPL-3.0)**.

# Contact

> This project is developed by [Dr. Osama
> Mahmoud](http://osmahmoud.com/), Department of Mathematical Sciences,
> University of Essex, United Kingdom. For bug reports, feature
> requests, and questions on technical issues of using the `dsEssex` R
> package, please open an
> [Issue](https://github.com/statcourses/dsEssex/issues). If you would
> like to contact the author, please feel free to send him an email on
> [o.mahmoud@essex.ac.uk](mailto:o.mahmoud@essex.ac.uk?subject=Mail%20from%20dsEssex%20project%20page).
