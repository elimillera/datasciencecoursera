corr <- function(directory, threshold = 0){
  
  
  ##get all files with csv ending.
  files <- list.files(path = directory, pattern = "*.csv")
  ##Number used for iteration
  numItem <- 1
  ##Numeric vector to be returned
  ret<- numeric()
  for(file in files){
    data <- read.csv(file.path(directory, file))
    if(complete(directory, numItem) > threshold){
      ret <- c(ret, cor(data["sulfate"],data["nitrate"], use = "pairwise.complete.obs"))
    }
    numItem <- numItem + 1
  }
  ret
  
}
