x <- c(16,1,2,0,4,2,7,1,2,14)

med <- median(x)

pt1 <- 0
for (value in x) {
  diff <- abs(value - med)
  pt1 <- pt1 + diff
}


mean1 <- floor(mean(x))
mean2 <- ceiling(mean(x))

pt21 <- 0
for (value in x) {
  diff <- abs(value - mean1)
  pt21 <- pt21 + (diff*(diff+1)/2)
}

pt22 <- 0
for (value in x) {
  diff <- abs(value - mean2)
  pt22 <- pt22 + (diff*(diff+1)/2)
}
if(pt21 < pt22) {
  pt2 <- pt21
} else {
  pt2 <- pt22
}

print("part 1: ")
print(pt1)
              
print("part 2: ")
print(pt2)
