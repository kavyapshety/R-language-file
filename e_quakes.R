#airquality=read.csv("path/Downloads/Descriptive_Vis.
e_quakes=datasets::quakes
head(e_quakes,10)
tail(e_quakes,10)
e_quakes[c(1,2)]
df=e_quakes[-6];df
summary(e_quakes[1])
e_quakes$long
summary(e_quakes$depth)
summary(e_quakes)    #all summary
#########################
plot(e_quakes$mag)
plot(e_quakes$stations,e_quakes$long,type="l")
plot(e_quakes)
plot(e_quakes$long,xlab="long concentrte",ylab="no. of instance",main="level of e_quake",col='blue')

#horizontal bar plot
plot(e_quakes$depth,xlab="depth rate",ylab="no.of insta",main="e_quakes",col="blue",horiz=F,axes=T)

#histogram
hist(e_quakes$long)
hist(e_quakes$stations,main="no of stations",xlab="number",col='blue')

#single box plot
boxplot(e_quakes$lat,main="boxplot")
boxplot.stats(e_quakes$long)$out

#multiple box plot
boxplot(e_quakes[,1:4],main='multiple')

#margin of the grid (mar)
#no of the rows and columns(mfrow)
#whether boder to be include(bty)
#position of the labels(las:1 for horiz, las:0 vert)
#bty(box around the plot)
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty='o')
plot(e_quakes$lat)
plot(e_quakes$lat,e_quakes$long)
plot(e_quakes$lat,e_quakes$long,type="b")
barplot(e_quakes$lat,e_quakes$long,main="e_quake data",xlab="data recod",col="green",horiz=TRUE)
hist(e_quakes$mag)
barplot(e_quakes$depth)
boxplot(e_quakes$stations)
boxplot(e_quakes[,0:4],main="multiple box plot")


#standard deviation, varience, skewness,kurtosis
sd(e_quakes$long)
sd(airquality$Ozone,na.rm=T)
var(e_quakes$depth)
skewness(e_quakes$long)
kurtosis(e_quakes$mag)
