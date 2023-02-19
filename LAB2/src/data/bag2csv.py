import bagpy
from bagpy import bagreader
import pandas as pd
import seaborn as sea
import matplotlib.pyplot as plt
import numpy as np



#st = bagreader('/home/saad/azhar/LAB2/src/data/occluded_move.bag')
#st = bagreader('/home/saad/azhar/LAB2/src/data/occluded_stationary.bag')
st = bagreader('/home/saad/azhar/LAB2/src/data/open_move.bag')
#st = bagreader('/home/saad/azhar/LAB2/src/data/open_stationary.bag')


st.topic_table

def to_csv(st):
    csv_files = []
    for t in st.topics:
        data = st.message_by_topic(t)
        csv_files.append(data)
       
    print(csv_files[0])
    data = pd.read_csv(csv_files[0])
    return data


csv_data_st = to_csv(st)


rd_csv_st = pd.read_csv("/home/saad/azhar/LAB2/src/data/open_move/gps.csv")

rd_csv_st

fig, ax = bagpy.create_fig(1)
ax[0].scatter(x='UTM_easting', y='UTM_northing', data=rd_csv_st, s=4)
plt.title('Time vs Altitude Plot for Stationary GPS Data', fontsize=20)
plt.xlabel('Time (secs)', fontsize=15)
plt.ylabel('Altitude (meters)', fontsize=15)
plt.show()



