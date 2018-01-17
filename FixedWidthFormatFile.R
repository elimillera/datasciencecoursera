download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for', destfile = 'week2Q5.for')
##Read file, Go from 29th col to 33rd col.
fourth.col <- read.fwf('week2Q5.for', widths = c(-28,4), header = TRUE)
##Sum the items together.
sum(file)
