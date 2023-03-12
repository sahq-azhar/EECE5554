from matplotlib import pyplot as plt
from matplotlib import style
import numpy as np
import pandas as pd
import math
import statistics
style.use('ggplot')

df= pd.read_csv('/home/saad/azhar/LAB3/Data/2023-03-09-10-48-31/imu.csv',header=None,skiprows=1)

y1 = df[9]
y2 = df[10]
y3 = df[11]

x = np.arange(0, y1.size, 1, dtype=int) #array to run as time

plt.plot(x, y1, label='X', color='red')
plt.plot(x, y2, label='Y', color='green')
plt.plot(x, y3, label='Z', color='blue')

plt.title('orientation vs Time', fontsize=20)
plt.xticks(fontsize=10)
plt.yticks(fontsize=10)
plt.ylabel('orientation', fontsize=15)
plt.xlabel('Time (sec)', fontsize=15)
plt.legend()

#plt.hist(y)
#plt.scatter(x,y)
#print("Mean:")
#print(statistics.mean(y1,y2,y3))
#print("Standard Deviation:")
#print(statistics.stdev(y1,y2,y3))

plt.show()
