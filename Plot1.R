# reaiding files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

sum_pm_year <-aggregate(NEI$Emissions, by=list(year=NEI$year), FUN=sum)

png("Plot1.png", width=480,height=480)
plot(sum_pm_year$year, sum_pm_year$x,
            main = "Total pm2.5 emission per year",
            ylab = "Total pm2.5 emission (tons)",
            xlab = "year",
            pch = 19, col='darkgreen')
dev.off()