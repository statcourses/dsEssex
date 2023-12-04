#' confidence interval for log OR
#'
#' @description \code{CI_log_OR()} calculates confidence intervals for log odds ratios from the log odds ratios
#' and data of two vectors representing the frequencies of: numerator; denominator.
#'
#' @param log_OR log odds ratios
#' @param numerator the column whose data are the frequencies of the numerator
#' @param denominator the column whose data are the frequencies of the denominator
#' @param sig significance level (i.e., 0.05 for 95% CI)
#' @param upper logical, if TRUE (the default), return the upper limit of the confidence interval. Otherwise return its lower limit
#'
#' @return A vector of the confidence limit of the log odds ratios (either the upper or lower limit)
#' @examples
#' CI_log_OR(rnorm(10), rbinom(10, 1000, 0.8), rbinom(10, 1000, 0.1))
#'
#' @export
CI_log_OR <- function(log_OR, numerator, denominator, sig = 0.05, upper = TRUE){
  SE = sqrt(1/numerator + 1/(sum(numerator) - numerator) + 1/denominator + 1/(sum(denominator) - denominator))
  if(upper){
    return(log_OR + qnorm(1 - sig/2) * SE)
  } else {
    return(log_OR - qnorm(1 - sig/2) * SE)
  }
}
