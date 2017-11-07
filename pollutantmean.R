pollutantmean <- function(directory, pollutant, id = 1:332){
  
  ##get all files with csv ending.
  files <- list.files(path = directory, pattern = "*.csv")
  filesSelected <- files[id]
  
  ##allData contains the main data frame for all csv files.
  allData <- NULL

  ##iterate through all selected files and add to data frame.
  for (item in filesSelected){
    allData <- rbind(allData, read.csv(file.path(directory, item)))
  }
  
  ##Select all data items for selected pollutant.
  allData <- allData[pollutant]
  ##Remove all na data.
  allData <- allData[!is.na(allData)]
  ##return mean.
  mean(allData)
}
