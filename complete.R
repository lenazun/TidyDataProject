complete <- function(directory, id) {
  
  directory <- paste("./", directory, sep="")
  
  datafiles <- list.files(directory, full.names=TRUE) 
  
  samplefiles <- datafiles[id]
  
  complete <- sapply(samplefiles, function(f) sum(complete.cases(read.csv(f))) )
    
  
  
  table <- data.frame(id, complete)
  names(table) <- c("id", "nobs")
  
  table
  
}
  