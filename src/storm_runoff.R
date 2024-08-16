#' predict_runoff
#'
#' @param I the fraction of watershed that is considered "impervious" (no unit)
#' @param A the watershed area (in acres)
#'
#' @return the volume of storm water runoff (in ft^3)
#' @export
#'
#' @examples
predict_runoff <- function(I, A) {
  runoff_coeff <- 0.05 + 0.9*I
  volume <- 3630*1*runoff_coeff*A
  return(volume)
}
