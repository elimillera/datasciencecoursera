dat <- read.table('household_power_consumption.txt', header = TRUE, sep = ';', na.strings = '?')
datFeb <- subset(dat, subset = (dat$Date == '1/2/2007' | dat$Date == '2/2/2007'))
hist(datFeb$Global_active_power, col = 'red', main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)')