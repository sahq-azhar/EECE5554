import bagpy
from bagpy import bagreader
import pandas as pd
import seaborn as sea
import matplotlib.pyplot as plt
import numpy as np


# In[111]:


#Stationary GPS Data
st = bagreader('/home/saad/sahq1/src/bagfiles/statsahq/2023-02-03-08-08-05.bag') 


# In[112]:


print(st.topic_table)


# In[113]:


def to_csv(st):
    csv_files = []
    for t in st.topics:
        data = st.message_by_topic(t)
        csv_files.append(data)
        
    print(csv_files[0])
    data = pd.read_csv(csv_files[0])
    return data


# In[258]:


csv_data_st = to_csv(st)


# In[286]:


rd_csv_st = pd.read_csv("/home/saad/sahq1/src/bagfiles/statsahq/2023-02-03-08-08-05/gps_message.csv")


# In[287]:


print(rd_csv_st)


# In[288]:


fig, ax = bagpy.create_fig(1)
ax[0].scatter(x='Time', y='altitude', data=rd_csv_st, s=4)
plt.title('Stationary GPS Data Plot between Time vs Altitude', fontsize=20)
plt.xlabel('Time (secs)', fontsize=15)
plt.ylabel('Altitude (meters)', fontsize=15)
plt.show()


# In[289]:


fig, ax = bagpy.create_fig(1)
ax[0].scatter(x='utm_easting', y='utm_northing', data=rd_csv_st, s=20)
plt.title('Stationary GPS Data Plot between UTM_easting vs UTM_northing',fontsize=18)
plt.xlabel('UTM_easting (+3278450)', fontsize=15)
plt.ylabel('UTM_northing(+468931900)', fontsize=15)
plt.show()


# In[225]:


#Moving GPS data
walk= bagreader('/home/saad/sahq1/src/bagfiles/movingbagfilessahq/2023-02-03-07-27-48.bag') 


# In[226]:


print(walk.topic_table)


# In[255]:


csv_data_walk = to_csv(walk)


# In[281]:


rd_csv_walk = pd.read_csv("/home/saad/sahq1/src/bagfiles/movingbagfilessahq/2023-02-03-07-27-48/gps_message.csv")


# In[282]:


print(rd_csv_walk)


# In[283]:


fig, ay = bagpy.create_fig(1)
ay[0].scatter(x='Time', y='altitude', data=rd_csv_walk, s=15)
plt.title('Walking GPS Data Plot between Time vs Altitude',fontsize=20)
plt.xlabel('Time (secs)',fontsize=15)
plt.ylabel('Altitude (meters)',fontsize=15)
plt.show()


# In[284]:


fig, ay = bagpy.create_fig(1)
ay[0].scatter(x='utm_easting', y='utm_northing', data=rd_csv_walk, s=7)
plt.title('Walking GPS Data Plot between UTM_easting vs UTM_northing',fontsize=20)
plt.xlabel('UTM_easting',fontsize=15)
plt.ylabel('UTM_northing',fontsize=15)
plt.show()


# In[ ]:


#occluded GPS data
walk= bagreader('/home/saad/sahq1/src/bagfiles/occusahq/2023-02-03-08-47-31.bag') 


# In[226]:


print(walk.topic_table)


# In[255]:


csv_data_walk = to_csv(walk)


# In[281]:


rd_csv_walk = pd.read_csv("/home/saad/sahq1/src/bagfiles/occusahq/2023-02-03-08-47-31/gps_message.csv")


# In[282]:


print(rd_csv_walk)


# In[283]:


fig, ay = bagpy.create_fig(1)
ay[0].scatter(x='Time', y='altitude', data=rd_csv_walk, s=15)
plt.title('Occluded GPS Data Plot between Time vs Altitude',fontsize=20)
plt.xlabel('Time (secs)',fontsize=15)
plt.ylabel('Altitude (meters)',fontsize=15)
plt.show()


# In[284]:


fig, ay = bagpy.create_fig(1)
ay[0].scatter(x='utm_easting', y='utm_northing', data=rd_csv_walk, s=7)
plt.title('Occluded GPS Data Plot between UTM_easting vs UTM_northing',fontsize=20)
plt.xlabel('UTM_easting',fontsize=15)
plt.ylabel('UTM_northing',fontsize=15)
plt.show()


# In[ ]:


