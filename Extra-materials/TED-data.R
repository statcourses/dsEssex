library(tidyverse)

ted_talks <-
read_csv("Extra-materials/TEDonly_speakers_final.csv") %>%
  select(talk_id = Talk_ID, headline, text, speaker = speaker_1, views)

save(ted_talks, file = "data/ted_talks.rda")
