## Adding the imports to the Description file automatically
My_packages <- c("tidyverse", "tidytext", "dslabs", "stringr", "textdata",
                 "english", "jsonlite", "lubridate", "scales", "ggcorrplot")


for(i in My_packages){
  usethis::use_package(package = i, type = "imports")
}

My_Depends <- c("plotly")
for(j in My_Depends){
  usethis::use_package(package = j, type = "Depends")
}

## document data
devtools::document()
## vignettes
# devtools::build_vignettes()

## compress the dataset
tools::resaveRdaFiles("data/", compress = "xz")
## check compression
tools::checkRdaFiles("data/")

## build the package
devtools::build()
devtools::check()

## install it
#devtools::install(build_vignettes = TRUE)
# devtools::install()


######## Testing ########
require(remotes)
# ref=main is VERY IMPORTANT as Github has changed the defualt repo name from "master" to "main"
remotes::install_github("statcourses/dsEssex", ref = "main")

# Alternatively
if(!require("remotes")) install.packages("remotes")
remotes::install_github("statcourses/dsEssex")

# Alternatively (less prefered as Travis CI is no longer free)
install.packages("drat")
drat::addRepo("statcourses")
install.packages("dsEssex")

require(dsEssex)

data(ted_talks)
data(tweets_david)

data(lbw); data(nhanes); data(PR_Oct_Deaths); data(Trump_tweets); data(ted_talks)
help(package = dsEssex)
# ?lbw; ?nhanes; ?PR_Oct_Deaths; ?Trump_tweets
# vignette("NAME", package = "dsEssex")
