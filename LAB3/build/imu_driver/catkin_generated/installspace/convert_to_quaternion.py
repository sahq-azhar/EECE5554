#!/usr/bin/env python2

import rospy
from math import sin, cos, radians
from geometry_msgs.msg import Quaternion
from imu_driver.srv.srv import ConvertToQuaternion, ConvertToQuaternionResponse


def convert_to_quaternion(req):

    roll = radians(req.roll)
    pitch = radians(req.pitch)
    yaw = radians(req.yaw)

    cy = cos(yaw * 0.5)
    sy = sin(yaw * 0.5)
    cp = cos(pitch * 0.5)
    sp = sin(pitch * 0.5)
    cr = cos(roll * 0.5)
    sr = sin(roll * 0.5)

    w = cy * cp * cr + sy * sp * sr
    x = cy * cp * sr - sy * sp * cr
    y = sy * cp * sr + cy * sp * cr
    z = sy * cp * cr - cy * sp * sr

    return ConvertToQuaternionResponse(Quaternion(x=x, y=y, z=z, w=w))


def convert_to_quaternion_server():
    rospy.init_node('convert_to_quaternion_server')
    s = rospy.Service('convert_to_quaternion', ConvertToQuaternion, convert_to_quaternion)
    print("Ready to convert Euler angles to Quaternion.")
    rospy.spin()


if __name__ == "__main__":
    convert_to_quaternion_server()

