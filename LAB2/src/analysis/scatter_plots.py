import pandas as pd
import matplotlib.pyplot as plt

data = pd.read_csv('/home/saad/azhar/LAB2/src/data/occluded_move/gps.csv')
x = data['UTM_easting']
y = data['UTM_northing']

plt.scatter(x, y)
plt.title('occluded moving UTM_easting vs UTM_northing')
plt.xlabel('UTM_easting in mts')
plt.ylabel('UTM_northing in mts')
plt.show() 

#sdfsaf
data1 = pd.read_csv('/home/saad/azhar/LAB2/src/data/occluded_stationary/gps.csv')
x = data1['UTM_easting']
y = data1['UTM_northing']

plt.scatter(x, y)
plt.title('occluded stationary UTM_easting vs UTM_northing')
plt.xlabel('UTM_easting in mts')
plt.ylabel('UTM_northing in mts')
plt.show() 

#dksfklf
data2 = pd.read_csv('/home/saad/azhar/LAB2/src/data/open_move/gps.csv')
x = data2['UTM_easting']
y = data2['UTM_northing']

plt.scatter(x, y)
plt.title('open moving UTM_easting vs UTM_northing')
plt.xlabel('UTM_easting in mts')
plt.ylabel('UTM_northing in mts')
plt.show() 

#dhbahksb
data3 = pd.read_csv('/home/saad/azhar/LAB2/src/data/open_stationary/gps.csv')
x = data3['UTM_easting']
y = data3['UTM_northing']

plt.scatter(x, y)
plt.title('open stationary UTM_easting vs UTM_northing')
plt.xlabel('UTM_easting in mts')
plt.ylabel('UTM_northing in mts')
plt.show() 
