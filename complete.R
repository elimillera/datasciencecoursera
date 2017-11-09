complete <- function(directory, id = 1:332){
  
  ##get all files with csv ending.
  files <- list.files(path = directory, pattern = "*.csv")
  filesSelected <- files[id]

  
  print(c("id        nobs"))
  for(item in filesSelected){
    data <- read.csv(file.path(directory, item))
    numNonNA <- nrow(na.omit(data))
    print(c(item, numNonNA))

  }
  
  
  numNonNA
}
