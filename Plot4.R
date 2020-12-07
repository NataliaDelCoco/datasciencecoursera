# reading files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# coal data
coal_code <- SCC[grepl("Coal", SCC$Short.Name), ]
coal_data <- NEI[NEI$SCC %in% coal_code$SCC, ]

# sum by year
coal_data_sum_year <-aggregate(coal_data$Emissions, by=list(year=coal_data$year), FUN=sum)

png("Plot4.png", width=480,height=480)
plot(coal_data_sum_year$year, coal_data_sum_year$x,
     main = "Total Coal pm2.5 emission per year",
     ylab = "Total Coal pm2.5 emission (tons)",
     xlab = "year",
     pch = 19, col='darkgreen')
dev.off()