#' Generate summoning session
#'
#' @param herocounts 4x4 matrix of containing colour x rarity counts
#' @param baserate Decimal for the initial 5* appearance rate
#' @param rateups Integer for the number of times pity has increased
#' @param targetcol Colour of desired character
#' @param targetrar Rarity of desired character
#'
#' @return 5x3 matrix with columns Rarity, Colour and Target
#' @export
#'
#' @examples
#' session(matrix(c(15,27,25,0,12,23,17,1,9,18,12,1,13,23,16,2),4,4,byrow=TRUE), 0.03, 0, "Red", "5*F")

session <- function(herocounts, baserate, rateups, targetcol, targetrar){
  sessionheroes <- array(0,dim=c(5,3))
  colnames(sessionheroes) <- c("Rarity","Colour","Target")
  rng_rar <- runif(5); rng_col <- runif(5)
  for (i in 1:5){
    if (rng_rar[i] < baserate*(1 + 0.005*rateups/(baserate + 0.03))){
      sessionheroes[i,1] <- "5*F"
      colourcounts <- herocounts[,4]}
    else if (rng_rar[i] < (baserate + 0.03 + 0.005*rateups)){
      sessionheroes[i,1] <- "5*"
      colourcounts <- herocounts[,3]}
    else if (rng_rar[i] < (baserate + 0.03 + 0.005*rateups +
                           0.36*(1-0.005*rateups/(0.97 - baserate)))){
      sessionheroes[i,1] <- "4*"
      colourcounts <- herocounts[,2]}
    else{
      sessionheroes[i,1] <- "3*"
      colourcounts <- herocounts[,1]}

    if (rng_col[i] < colourcounts[1]/sum(colourcounts)){
      sessionheroes[i,2] <- "Red"}
    else if (rng_col[i] < sum(colourcounts[1:2])/sum(colourcounts)){
      sessionheroes[i,2] <- "Blue"}
    else if (rng_col[i] < sum(colourcounts[1:3])/sum(colourcounts)){
      sessionheroes[i,2] <- "Green"}
    else{sessionheroes[i,2] <- "Grey"}

    if (sessionheroes[i,2] == targetcol &
        is.element(sessionheroes[i,1],targetrar)){
      rng_tar <- runif(1)
      if (rng_tar < 1/colourcounts[targetcol]){
        sessionheroes[i,3] <- 1}}
  }
  sessionheroes
}
