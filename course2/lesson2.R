pollutantmean <-function(directory,pollutant,id=1:332) { 
  sumpollutant = 0
  sumlength    = 0 
  
  for (number in id) {
    file = paste(directory,"/",id,".csv")
    readfile = read.csv(file)
    sumpollutant = sumpollutant + sum(!is.na(readfile$pollutant))
    sumlength    = sumlength    + length(!is.na(readfile$pollutant))
    
  }
  return(sumpollutant/sumlength)

}