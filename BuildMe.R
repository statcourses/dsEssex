## Adding the imports to the Description file automatically
My_packages <- c("dslabs", "dplyr", "stringr", "ggplot2", "tidytext", "textdata",
                 "english", "tidyr", "jsonlite", "lubridate", "scales")
for(i in My_packages){
  usethis::use_package(package = i, type = "imports")
}

## document data
devtools::document()
## vignettes
# devtools::build_vignettes()

## compress the dataset
tools::resaveRdaFiles("data/", compress = "xz")

## build the package
devtools::build()

## install it
#devtools::install(build_vignettes = TRUE)
devtools::install()


######## Testing ########
install.packages("drat")
drat::addRepo("statcourses")
install.packages("dsEssex")
install.packages("BristolVis")
install.packages("essexBigdata")

require(dsEssex)

data(lbw); data(nhanes); data(PR_Oct_Deaths); data(Trump_tweets)
help(package = dsEssex)
# ?lbw; ?nhanes; ?PR_Oct_Deaths; ?Trump_tweets
# vignette("NAME", package = "dsEssex")
# system.file("extdata", "PR-Mortality.pdf", package="dsEssex")

