complete = function(directory,id) {
  
  filelist = list.files(directory,'*.csv')
  filenames = paste(directory,filelist,sep='')
  countframe = c()
  idframe    = c()
  for (file in id) {
    readfile         = read.csv(filenames[file])
    fulldata         = na.omit(readfile)
    samplecount      = length(fulldata[,1])
    countframe       = c(countframe,samplecount)
    idframe          = c(idframe,file)
    
  }
  #countframe = countframe[-1]
  #idframe = idframe[-1]
  #names(countframe) = c(filelist[id])
  combinedframe = do.call(rbind,Map(data.frame, id=idframe,nobs=countframe))
  return(combinedframe)
}



