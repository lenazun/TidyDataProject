pollutantmean <- function(directory, pollutant, id) {
  
  directory <- paste("./", directory, sep="")
 
  datafiles <- list.files(directory, full.names=TRUE) 
  
  samplefiles <- datafiles[id]
  
  selecteddata <- lapply(samplefiles,function(i){
    read.csv(i, header=TRUE)})
  
  mergeddata <- do.call("rbind", selecteddata)
  
{
      if(pollutant == "nitrate") {
        final <- mean(mergeddata$nitrate, na.rm=TRUE)
      }
      
      else if(pollutant == "sulfate") {
        final <- mean(mergeddata$sulfate, na.rm=TRUE)   
      }
    }

return(final)
  
  
}
