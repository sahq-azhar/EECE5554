#!/usr/bin/env python2

import serial
import numpy as np
from cmath import pi
import rospy
from std_msgs.msg import String
from imu_driver.msg import imu_msg
from imu_driver.srv import ConvertToQuaternion, ConvertToQuaternionRequest

DATA = imu_msg()
DATA.Header.frame_id = 'IMU1_Frame'

def imu():

    pub = rospy.Publisher('imu', imu_msg,queue_size=10)     
    now = rospy.get_rostime()

    while True:
        line= serdata.readline()
        linestring=line.decode("utf-8")
        print(linestring)
        linesplit=linestring.split(",")
        if(linesplit[0]=="$VNYMR"):      
            quaternion = convert_to_quaternion_client(float(linesplit[3]), float(linesplit[2]), float(linesplit[1]))
            DATA.IMU.orientation.x = quaternion.x
            DATA.IMU.orientation.y = quaternion.y
            DATA.IMU.orientation.z = quaternion.z
            DATA.IMU.orientation.w = quaternion.w

            DATA.IMU.angular_velocity.x = float(linesplit[10])
            DATA.IMU.angular_velocity.y = float(linesplit[11])
            DATA.IMU.angular_velocity.z = float(linesplit[12][:-5])
            
            DATA.IMU.linear_acceleration.x = float(linesplit[7])
            DATA.IMU.linear_acceleration.y = float(linesplit[8])
            DATA.IMU.linear_acceleration.z = float(linesplit[9])
            
            DATA.MagField.magnetic_field.x = float(linesplit[4])
            DATA.MagField.magnetic_field.y = float(linesplit[5])
            DATA.MagField.magnetic_field.z = float(linesplit[6])

            DATA.Header.stamp.secs = now.secs
            DATA.Header.stamp.nsecs = now.nsecs
            
            DATA.raw_IMU = linestring
            #print("success")
        pub.publish(DATA)


def convert_to_quaternion_client(roll, pitch, yaw):
    rospy.wait_for_service('convert_to_quaternion')
    try:
        convert_func = rospy.ServiceProxy('convert_to_quaternion', ConvertToQuaternion)
        req = ConvertToQuaternionRequest()
        req.roll = roll
        req.pitch = pitch
        req.yaw = yaw
        res = convert_func(req)
        return res.quaternion
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

if True:
    try:
        rospy.init_node('imu', anonymous=True)
        serial_port = rospy.get_param('~port')
        serdata = serial.Serial(port=serial_port, baudrate=115200, bytesize=8, timeout=5, stopbits=serial.STOPBITS_ONE)
        serdata.write(b"VNWRG,07,40*XX")
        imu()
    except rospy.ROSInterruptException:
        pass

