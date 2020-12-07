Baltdata <- subset(NEI, fips=="24510")
Baltdata_sum_year<-aggregate(Baltdata$Emissions, by=list(year=Batldata$year), FUN=sum)

png("Plot2.png", width=480,height=480)
plot(Baltdata_sum_year$year, Baltdata_sum_year$x,
     main = "Total pm2.5 emission per year",
     ylab = "Total pm2.5 emission (tons)",
     xlab = "year",
     pch = 19, col='darkgreen')
dev.off()