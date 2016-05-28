### Analyzing cooking temps and times for beef
### MK Lau
### 24 May 2015

x <- read.table('../data/cook_temps/beef.csv',sep=' ',header=TRUE)
x[17:nrow(x),3:4] <- x[17:nrow(x),3:4]/60
plot(x[,c(1,4)],ylab='Minues to 7-Log10 Lethality',type='l')
abline(v=135,h=max(x[x[,1]>=135,4]),col='red',lty=2)
