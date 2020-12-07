# subset Baltmore City, On-road
Balt_onroad_data <- subset(NEI, fips=="24510" & type=="ON-ROAD")

# sum by year
Balt_onroad_sum_year <-aggregate(Balt_onroad_data$Emissions, by=list(year=Balt_onroad_data$year), FUN=sum)

png("Plot5.png", width=480,height=480)
plot(Balt_onroad_sum_year$year, Balt_onroad_sum_year$x,
     main = "Total motor Vehicles pm2.5 emission per year in Baltmore City",
     ylab = "Total motor Vehicles pm2.5 emission (tons)",
     xlab = "year",
     pch = 19, col='darkgreen')
dev.off()