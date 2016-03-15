library(pixmap)
bugImg <- read.pnm(file = "~/Documents/tech/R/Resource/images/BUG.PGM")

blueprint <- function(img,rows,cols,weight){
  lrow <- length(rows)
  lcol <- length(cols)
  newImg <- img
  randomnoise <- matrix(nrow = lrow,ncol = lcol,runif(lrow*lcol))
  newImg@grey[rows,cols] <- (1-weight) * img@grey[rows,cols] + weight * randomnoise
  return(newImg)
}

#noiseImg <- blueprint(bugImg,212:272,195:355,0.5)
