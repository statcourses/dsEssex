#' Low Birth Weight
#'
#' The is a modified version of the low birth weight (lbw) data, obtained from Hosmer and
#' Lemeshow (2000).
#'
#' \describe{
#' \item{id}{Subject's identifier}
#' \item{low}{1=low birthweight baby (under 2500g); 0=norml weight (2500g or over)}
#' \item{age}{age of mother in years}
#' \item{lwt}{weight of mother (lbs) at last menstrual period}
#' \item{race}{factor: white; black; 3=other}
#' \item{smoke}{1=history of mother smoking; 0=mother nonsmoker}
#' \item{ptl}{number of false of premature labors: 0-3}
#' \item{ht}{1=history of hypertension; 0 =no hypertension}
#' \item{ui}{1=uterine irritability; 0 no irritability}
#' \item{ftv}{number of physician visits in 1st trimester}
#' \item{bwt}{birth weight in grams}
#' }
#'
#' @name lbw
#' @docType data
#' @usage data(lbw)
#' @return A data frame with 189 rows and 11 variables.
#' @keywords datasets
#' @source Modified from Hosmer, D and S. Lemeshow (2000), Applied Logistic Regression, Wiley.
#' @examples
#' data(lbw)
NULL


#' National Health & Nutrition Examination Survey
#'
#' Selected variables from the NHANES 2009-2012 data collected by the US National Center for
#' Health Statistics (NCHS).
#'
#'
#' \describe{
#' \item{ID}{Subject's identifier}
#' \item{Gender}{Gender (sex) of study participant	coded as male or female}
#' \item{Age}{Age in years at screening of study participant. Note: Subjects 80 years or older were recorded as 80.}
#' \item{AgeDecade}{Categorical variable derived from age with levels 0-9, 10-19, ... 70+}
#' \item{Education}{Educational level of study participant Reported for participants aged 20 years or older.}
#' \item{MaritalStatus}{Marital status of study participant. Reported for participants aged 20 years or older.}
#' \item{HomeRooms}{How many rooms are in home of study participant (counting kitchen but not bathroom). 13 rooms = 13 or more rooms.}
#' \item{HomeOwn}{One of Home, Rent, or Other indicating whether the home of study participant or someone in their family is owned, rented or occupied by some other arrangement.}
#' \item{Weight}{Weight in kg}
#' \item{Height}{Standing height in cm. Reported for participants aged 2 years or older.}
#' \item{BMI}{Body mass index. Reported for participants aged 2 years or older.}
#' \item{BPSysAve}{Combined systolic blood pressure reading.}
#' \item{BPDiaAve}{Combined diastolic blood pressure reading}
#' \item{SleepTrouble}{Study participant has sleep trouble}
#' \item{Diabetes}{Study participant told by a doctor or health professional that they have diabetes. Reported for participants aged 1 year or older.}
#' \item{DiabetesAge}{Age of study participant when first told they had diabetes.}
#' \item{Depressed}{Self-reported number of days where participant felt down, depressed or hopeless. Reported for participants aged 18 years or older. One of None, Several, Majority (more than half the days), or AlmostAll.}
#' \item{SleepHrsNight}{Self-reported number of hours study participant usually gets at night on weekdays or workdays. Reported for participants aged 16 years and older.}
#' \item{SmokeNow}{Study participant currently smokes cigarettes regularly. Reported for participants aged 20 years or older}
#' \item{SmokeAge}{Age study participant first started to smoke cigarettes fairly regularly. Reported for participants aged 20 years or older.}
#' }
#'
#' @name nhanes
#' @docType data
#' @usage data(nhanes)
#' @return A data frame with 10,000 rows and 20 variables.
#' @keywords datasets
#' @source selected variables from the NHANES data in the \code{NHANES} R package. It is
#' originally assembled by Michelle Dalrymple of Cashmere High School and Chris Wild of
#' the University of Auckland, New Zealand for use in teaching statistics.
#' @examples
#' data(nhanes)
NULL


#' PR October Deaths 2015-2017
#'
#' Daily mortality data for Puerto Rico, the USA territory, extracted for the month of October
#' through a number of years (2015-2018). The PDF file containing the whole data from
#' Jan 1, 2015 to May 31, 2018 can be found at: \code{system.file("extdata", "PR-Mortality.pdf", package = "dsEssex")}
#'
#' @name PR_Oct_Deaths
#' @docType data
#' @usage data(PR_Oct_Deaths)
#' @return A character vector with 43 entries.
#' @keywords datasets
#' @source These data were extracted by Osama Mahmoud (the author and the maintainer of this
#'  R package) from a pdf report on a daily mortality in the month of October through 2015-2018.
#'  The pdf report was available as part of the dslabs R package by Rafael A. Irizarry.
#' @examples
#' data(PR_Oct_Deaths)
NULL


#' Trump Tweets from 2009 to 2021
#'
#' All tweets from Donald Trump's twitter account from 2009 to 8 JAN 2021 (when his account
#' was suspended post the 2020 US presidential election).
#'
#' \describe{
#' \item{id}{Tweet ID}
#' \item{text}{Tweet}
#' \item{isRetweet}{logical: whether the text is a retweet}
#' \item{isDeleted}{logical: whether the text was deleted}
#' \item{device}{The device/platform from which the tweet was composed}
#' \item{favorites}{Number of times the tweet had been favored until 8 JAN 2021}
#' \item{retweets}{Number of times the tweet had been retweeted until 8 JAN 2021}
#' \item{isFlagged}{logical: whether the tweet was flagged}
#' \item{created_at}{Date and time at which the tweet was composed}
#' }
#'
#' @name Trump_tweets
#' @docType data
#' @usage data(Trump_tweets)
#' @return An object of class "data.frame" with 35,136 rows and 9 variables.
#' @keywords datasets
#' @source Extracted from the Trump Twitter Archive: https://www.thetrumparchive.com by Osama
#'  Mahmoud (the author and the maintainer of this R package)
#' @examples
#' data(Trump_tweets)
#' head(Trump_tweets)
NULL
