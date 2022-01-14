#' compute_OR
#'
#' @description \code{compute_OR()} calculates odds ratios from data of two vectors representing the
#' frequencies of: numerator; denominator. The correction may be used if there is any frequency equals
#' zero to avoid getting meaningless outputs.
#'
#' @param numerator the column whose data are the frequencies of the numerator
#' @param denominator the column whose data are the frequencies of the denominator
#' @param correction logical, if TRUE (the default) the odds ratio will be calculated by adding 0.5 to avoid meaningless results
#'
#' @return A vector of odds ratios
#' @examples
#' compute_OR(rbinom(10, 1000, 0.8), rbinom(10, 1000, 0.1), FALSE)
#'
#' @export
compute_OR <- function(numerator, denominator, correction = TRUE){
  if(correction){
    ODDS_N = (numerator + 0.5) / (sum(numerator) - numerator + 0.5)
    ODDS_D = (denominator + 0.5) / (sum(denominator) - denominator + 0.5)
  } else {
    ODDS_N = numerator / (sum(numerator) - numerator)
    ODDS_D = denominator / (sum(denominator) - denominator)
  }
  return(OR = ODDS_N/ODDS_D)
}
