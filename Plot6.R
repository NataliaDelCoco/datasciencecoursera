# subset Baltmore City, On-road
BaltLA_onroad_data <- subset(NEI, fips=="24510" | fips=="06037" & type=="ON-ROAD")
# sum by year
BaltLA_onroad_sum_year <-aggregate(BaltLA_onroad_data$Emissions, by=list(BaltLA_onroad_data$fips,BaltLA_onroad_data$year), FUN=sum)

colnames(BaltLA_onroad_sum_year) <- c("city", "year", "x")

png("Plot6.png",width=500,height=400)
ggp <- ggplot(BaltLA_onroad_sum_year, aes(factor(year), x, fill=city )) +
    geom_bar(stat="identity") +
    facet_grid(scales="free", space="free", .~city) +
    labs(x="year", y = "Total motor Vehicles pm2.5 emission (tons)")+
    labs(title="Total motor Vehicles pm2.5 emission per year in Baltmore City and Los Angeles")
print(ggp)
dev.off()
