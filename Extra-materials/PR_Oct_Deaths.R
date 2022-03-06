# fn <- system.file("extdata", "PR-Mortality.pdf", package = "dsEssex")
# install.packages("pdftools")
library(pdftools)
txt <- pdf_text("PR-Mortality.pdf")
Mort_raw <- txt[10]

require(stringr)
Oct_Death <- str_split(Mort_raw, "\r\n")[[1]]

save(PR_Oct_Deaths, file = "data/PR_Oct_Deaths.RData")
