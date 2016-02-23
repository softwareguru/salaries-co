library(doBy)

alldata <- read.table("pretty.csv", header=TRUE, sep=",", na.strings="", dec=".", strip.white=TRUE)

LANG <- summaryBy(SALARY_USD ~ LANG, data=alldata, FUN=c(length,median,mean,sd))
write.csv(LANG, "tables/lang.csv")

ENGLISH <- summaryBy(SALARY_USD ~ ENGLISH, data=alldata, FUN=c(length,median,mean,sd))
write.csv(ENGLISH, "tables/english.csv")

CITY <- summaryBy(SALARY_USD ~ CITY, data=alldata, FUN=c(length,median,mean,sd))
write.csv(CITY, "tables/city.csv")
