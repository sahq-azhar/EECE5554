#!/usr/bin/env python


import serial
import rospy
import utm
from gps_driver.msg import gps

ser = serial.Serial('/dev/ttyUSB0')
ser.baudrate = 4800

msg = gps()

def talker():
    pub = rospy.Publisher('gps_message', gps, queue_size=10)
    rospy.init_node('gps_talker', anonymous=True)
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        input_serial = str(ser.readline())
        line_split = input_serial.split("b'")
        comma_split = line_split[0].split(",")
        if comma_split[0] == "$GPGGA":

            latitude_gps = float(comma_split[2])
            latitude_mins = latitude_gps % 100
            latitude_degree = int(latitude_gps / 100)
            latitude = latitude_degree + (latitude_mins / 60)

            longitude_gps = float(comma_split[4])
            longitude_mins = longitude_gps % 100
            longitude_degree = int(longitude_gps / 100)
            longitude = longitude_degree + (longitude_mins / 60)
            longitude = -longitude

            u = utm.from_latlon(latitude, longitude)

            altitude = float(comma_split[9])
   hdop = float(comma_split[8])
   utc = float(comma_split[1])
           
            msg.header = comma_split[0]
            msg.latitude = latitude
            msg.longitude = longitude
            msg.altitude = altitude
            msg.utm_easting = u[0]
            msg.utm_northing = u[1]
   msg.HDOP = hdop
   msg.UTC = utc

            msg.utm_northing = u[1]


            msg.zone = u[2]
            msg.letter = u[3]
            rospy.loginfo(msg)
            pub.publish(msg)
            rate.sleep()

if __name__ == '__main__':
    talker()
