## source: n individual can download their own Twitter archive by following [directions available on Twitter's website]
## (https://support.twitter.com/articles/20170160). This data was downloaded from https://github.com/dgrtwo/tidy-text-mining/tree/master/data

tweets_julia <- read.csv("Extra-materials/tweets_julia.csv")
save(tweets_julia, file = "data/tweets_julia.rda")

tweets_david <- read.csv("Extra-materials/tweets_David.csv")
save(tweets_david, file = "data/tweets_david.rda")
