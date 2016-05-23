library(pixmap)
bugImg <- read.pnm(file = "~/Documents/tech/R/Resource/images/BUG.PGM")

blueprint <- function(img,rows,cols,weight){
  lrow <- length(rows)
  lcol <- length(cols)
  newImg <- img
  #create a random matrix,values are during 0 and 1
  randomnoise <- matrix(nrow = lrow,ncol = lcol,runif(lrow*lcol))
  #noisy the certain area of newImg's grey values
  newImg@grey[rows,cols] <- (1-weight) * img@grey[rows,cols] + weight * randomnoise
  return(newImg)
}

#noiseImg <- blueprint(bugImg,212:272,195:355,0.5)
