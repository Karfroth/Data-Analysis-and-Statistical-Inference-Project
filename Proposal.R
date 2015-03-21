##Data loading and Data Processing
load(url("http://bit.ly/dasi_gss_data"))
datasforstudy<-gss[gss$year==2012, c(12, 23, 27)]
for(i in 1:3){
  datasforstudy<-datasforstudy[which(!is.na(datasforstudy[, i])), ]
}

##Plots
par(mfrow=c(1,2))
with(data = datasforstudy, boxplot(coninc~born, 
                                   main = "Total family income in constant dollars and Country of Origin", 
                                   xlab = "Born in US",
                                   ylab = "Total family income in constant dollars"))
with(data = datasforstudy, mosaicplot(born~degree, main = "Born in US and RS highest degree"))

##Summary
summary(datasforstudy)

