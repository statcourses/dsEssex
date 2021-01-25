## source: 'https://www.thetrumparchive.com' (https://drive.google.com/file/d/16wm-2NTKohhcA26w-kaWfhLIGwl_oX95/view)
# The json file was downloaded from the source above:
trump_tweets <- jsonlite::fromJSON("www/tweets_01-08-2021.json")

Trump_tweets <- trump_tweets %>%
  mutate(isRetweet = isRetweet == "t", isDeleted = isDeleted == "t", isFlagged = isFlagged == "t",
         created_at = ymd_hms(date, tz = "EST")) %>%
  filter(!isRetweet & !str_detect(text, '^"')) %>%
  select(-date)

save(Trump_tweets, file = "data/Trump_tweets.RData")
