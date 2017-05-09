import numpy as np
import pandas as pd

#Read CSV into file
mydata = pd.read_csv("hw1_data.csv")

#print the first two rows
print mydata[0:2]

#determine data fram dimensions
print mydata.shape

#print the last two rows
print mydata[151:153]

#print Ozone 47th row
print 'Ozone 47th row is... ' , mydata.loc[46,'Ozone']

#Count the missing pieces of data
print "Missing data is... "
print mydata.isnull().sum()
print len(mydata.index)-mydata.count()
print "Mean of Ozone is: ", np.mean(mydata['Ozone'])

#subset based on variables
datasubset1 = mydata.loc[(mydata.Ozone>31) & (mydata.Temp>90)]

#df[(df.Product == p_id) & (df.Time> start_time) & (df.Time < end_time)][['Time','Product']]

print "data subset: "
print datasubset1
print 'dims are: ', datasubset1.shape
print 'mean for Solar in subset: ', datasubset1["Solar.R"].mean()

#datasubset2 = mydata.query('Month'==6)['Temp'].mean()
datasubset2 = mydata[mydata.Month==6]
datasubset3 = mydata.query("Month == [6]")

print 'Temp mean for month 6', datasubset2["Temp"].mean()
print 'Test: ', datasubset3["Temp"].mean()

datasubset4 = mydata.query("Month == [5]")["Ozone"].max()
print datasubset4

print datasubset1["Solar.R"].mean()
print 'Mean of Ozone', mydata["Ozone"].mean()
