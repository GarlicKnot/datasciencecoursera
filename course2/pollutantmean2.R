pollutantmean <- function(directory,pollutant,id=1:332) {
  
  #Define the variables
  
  #Find all the files in the directory
  #filelist = list.files('./specdata/', '*.csv')
  filelist = list.files(directory, '*.csv')
  filenames = paste(directory,filelist,sep='')
  sumframe = data.frame(1)
  lengthframe = data.frame(1)
  
  for (file in id) {
    #Read the file in
    input = read.csv(filenames[file])
    isolatedpollutant = input[pollutant][!is.na(input[pollutant])]
    lengthframe = data.frame(lengthframe,length(isolatedpollutant))
    sumframe = data.frame(sumframe,sum(isolatedpollutant))
    #datafile = mean(input$pollutant[!is.na()])
    #Break out the pollutant
    #pollunclean = input$pollutant
    #filteredpoll = pollunclean[!is.na(pollunclean)]
    #return(sum(pollutant))
    #pollutantvalue = pollutantvalue + sum(filteredpoll)
    #pollutantcount = pollutantcount + length(filteredpoll)
  }
  meanval = sum(sumframe[-1])/sum(lengthframe[-1])
  return(meanval)
  
}