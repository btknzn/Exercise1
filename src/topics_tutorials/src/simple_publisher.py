#!/usr/bin/env python3

import rospy

from std_msgs.msg import Int32

from topics_tutorials.msg import Complex

rospy.init_node('topic_publisher')

pub = rospy.Publisher('counter', Complex, queue_size = 10)

rate = rospy.Rate(2)

count = 0
msg = Complex()
while not rospy.is_shutdown():
	msg.real = count
	msg.imaginary = count*2
	pub.publish(msg)
	count += 1
	rate.sleep()
