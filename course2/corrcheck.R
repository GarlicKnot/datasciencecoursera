corr = function(directory,threshhold = 0) {
  filelist   = list.files(directory,'*.csv')
  filenames  = paste(directory,filelist,sep='')
  countvec = 1:length(filelist)
  countframe = c()
  
  for (file in countvec) {
    readfile         = read.csv(filenames[file])
    fulldata         = na.omit(readfile)
    correlation      = cor(fulldata[2],fulldata[3])
    if (length(fulldata[,1]) > threshhold) {
      countframe = c(countframe,correlation)
    } else {
      
    }
    
  }
  return(countframe)
}