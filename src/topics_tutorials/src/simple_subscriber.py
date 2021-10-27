#!/usr/bin/env python3
import rospy
from std_msgs.msg import Int32
from topics_tutorials.msg import Complex

def callback(msg):
	print("real:"+str(msg.real )+"Imaginary:" +str(msg.imaginary) )
	



rospy.init_node('topic_subscriber',anonymous = True)
sub = rospy.Subscriber('counter', Complex, callback)
rospy.spin()

