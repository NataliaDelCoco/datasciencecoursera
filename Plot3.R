# reading files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#subset Batmore city
Baltdata <- subset(NEI, fips=="24510")

png("Plot3.png",width=550,height=450)
plot <- ggplot(Baltdata, aes(factor(year), Emissions, fill=type)) +
           geom_bar(stat='identity') +
           facet_grid(.~type, scales="free", space="free") +
           labs(x = "year", y="Total pm2.5 emission (tons)") +
           labs(title = "pm2.5 emission in Baltmore City by type")
print(plot)
dev.off()