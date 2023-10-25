library(psych)
score <- read.csv("D:/PERMANENT ASSETS/Training/MVDT/csv/score.csv", row.names=1)
attach(score)
KMO(score) # KMO test
### KMO test to identify number of contributing variables
## Look for MSA values 
## 0.00 to 0.49 unacceptable
## 0.50 to 0.59 miserable
## 0.60 to 0.69 mediocre
## 0.70 to 0.79 middling
## 0.80 to 0.89 meritorious
## 0.90 to 1.00 marvelous  

#draw scree plot
ev <- eigen(cor(score)) # get eigenvalues
ev$values
scree(score, pc=FALSE)
par(mar=c(2,2,2,2))
parallel<-fa.parallel(score, fa="fa")
dev.off()

#https://carpentries-incubator.github.io/high-dimensional-stats-r/05-factor-analysis/index.html
