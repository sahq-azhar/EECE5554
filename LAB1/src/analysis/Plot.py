import bagpy
from bagpy import bagreader
import pandas as pd
import seaborn as sea
import matplotlib.pyplot as plt
import numpy as np


# In[111]:


#Stationary Data
st = bagreader('/home/saad/final/sahq2data/sahq_sta/2023-02-07-05-54-42.bag') 
print(st.topic_table)

def to_csv(st):
    csv_files = []
    for t in st.topics:
        data = st.message_by_topic(t)
        csv_files.append(data)
        
    print(csv_files[0])
    data = pd.read_csv(csv_files[0])
    return data

csv_data_st = to_csv(st)
rd_csv_st = pd.read_csv("/home/saad/final/sahq2data/sahq_sta/2023-02-07-05-54-42/gps_message.csv")
print(rd_csv_st)

fig, ax = bagpy.create_fig(1)
ax[0].scatter(x='Time', y='altitude', data=rd_csv_st, s=4)
plt.title('Stationary GPS Data Plot between Time vs Altitude', fontsize=20)
plt.xlabel('Time (secs)', fontsize=15)
plt.ylabel('Altitude (meters)', fontsize=15)
plt.show()

fig, ax = bagpy.create_fig(1)
ax[0].scatter(x='utm_easting', y='utm_northing', data=rd_csv_st, s=20)
plt.title('Stationary GPS Data Plot between UTM_easting vs UTM_northing',fontsize=18)
plt.xlabel('UTM_easting (+3278450)', fontsize=15)
plt.ylabel('UTM_northing(+468931900)', fontsize=15)
plt.show()


#Moving data
walk= bagreader('/home/saad/final/sahq2data/sahq_mov/2023-02-07-05-37-41.bag') 
print(walk.topic_table)

csv_data_walk = to_csv(walk)

rd_csv_walk = pd.read_csv("/home/saad/final/sahq2data/sahq_mov/2023-02-07-05-37-41/gps_message.csv")


print(rd_csv_walk)

fig, ay = bagpy.create_fig(1)
ay[0].scatter(x='Time', y='altitude', data=rd_csv_walk, s=15)
plt.title('Walking GPS Data Plot between Time vs Altitude',fontsize=20)
plt.xlabel('Time (secs)',fontsize=15)
plt.ylabel('Altitude (meters)',fontsize=15)
plt.show()


fig, ay = bagpy.create_fig(1)
ay[0].scatter(x='utm_easting', y='utm_northing', data=rd_csv_walk, s=7)
plt.title('Walking GPS Data Plot between UTM_easting vs UTM_northing',fontsize=20)
plt.xlabel('UTM_easting',fontsize=15)
plt.ylabel('UTM_northing',fontsize=15)
plt.show()


#occluded data
walk= bagreader('/home/saad/final/sahq2data/sahq_occ/2023-02-07-05-20-19.bag') 

print(walk.topic_table)

csv_data_walk = to_csv(walk)


rd_csv_walk = pd.read_csv("/home/saad/final/sahq2data/sahq_occ/2023-02-07-05-20-19/gps_message.csv")

print(rd_csv_walk)


fig, ay = bagpy.create_fig(1)
ay[0].scatter(x='Time', y='altitude', data=rd_csv_walk, s=15)
plt.title('Occluded GPS Data Plot between Time vs Altitude',fontsize=20)
plt.xlabel('Time (secs)',fontsize=15)
plt.ylabel('Altitude (meters)',fontsize=15)
plt.show()


fig, ay = bagpy.create_fig(1)
ay[0].scatter(x='utm_easting', y='utm_northing', data=rd_csv_walk, s=7)
plt.title('Occluded GPS Data Plot between UTM_easting vs UTM_northing',fontsize=20)
plt.xlabel('UTM_easting',fontsize=15)
plt.ylabel('UTM_northing',fontsize=15)
plt.show()



