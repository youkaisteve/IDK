#create a matrix
y<-matrix(c(1,2,3,4),nrow = 2,ncol = 2)
# type y in console,you'll see
# 1   3
# 2   4

#yByRow input by row, but also stored by col
yByRow<-matrix(c(1,2,3,4,5,6),nrow=2,byrow = TRUE)
#     [,1] [,2]  [,3]
#[1,]    1    2    3
#[2,]    4    5    6

#set value to ths sub matrix,ex. replace the 1st and 2rd rows
yByRow[c(1,2),] <- matrix(c(4,5,6,7,8,9),ncol = 3,byrow = TRUE)
#now yByrow is
#     [,1] [,2]  [,3]
#[1,]    4    5    6
#[2,]    7    8    9
