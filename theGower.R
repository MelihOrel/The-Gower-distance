## Dataset sample 
sex <- c('E','F','E','F','F')
blood_pres <- c(140,120,160,150,140 )
pain_level <- c(5,3,1,4,1)
test_1 <- sample(c('Positive','Negative'),5,replace = T)
test_2 <- sample(c('Positive','Negative'),5,replace = T)
test_3 <- sample(c('Positive','Negative'),5,replace = T)

df <- data.frame(sex,blood_pres,pain_level,test_1,test_2,test_3) ; head(df)


###############################################
library(cluster)

distdf<-daisy(df, metric="gower", type = list(ordratio=c(3),symm = c(1),asymm = c(4:6)),
      stand=TRUE)

clust_gower <- hclust(distdf,method = 'complete') # single model

plot(clust_gower)

rect.hclust(clust_gower,k = 2)


