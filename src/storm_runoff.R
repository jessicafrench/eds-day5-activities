#' storm water volume 
#'
#' @param imp_frac fraction of water that is considered impervious
#' @param area area of the watershed
#'
#' @return volume of stormwater expected for watershed
#' @export none
#'
#' @examples none
predict_runoff <- function(imp_frac, area) {
  runoff_coe <- 0.05 + 0.9 * imp_frac
  volume <- 3630 * 1 * runoff_coe * area
  return(volume)
}