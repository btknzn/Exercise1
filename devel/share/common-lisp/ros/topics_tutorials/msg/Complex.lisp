; Auto-generated. Do not edit!


(cl:in-package topics_tutorials-msg)


;//! \htmlinclude Complex.msg.html

(cl:defclass <Complex> (roslisp-msg-protocol:ros-message)
  ((real
    :reader real
    :initarg :real
    :type cl:integer
    :initform 0)
   (imaginary
    :reader imaginary
    :initarg :imaginary
    :type cl:integer
    :initform 0))
)

(cl:defclass Complex (<Complex>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Complex>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Complex)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topics_tutorials-msg:<Complex> is deprecated: use topics_tutorials-msg:Complex instead.")))

(cl:ensure-generic-function 'real-val :lambda-list '(m))
(cl:defmethod real-val ((m <Complex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topics_tutorials-msg:real-val is deprecated.  Use topics_tutorials-msg:real instead.")
  (real m))

(cl:ensure-generic-function 'imaginary-val :lambda-list '(m))
(cl:defmethod imaginary-val ((m <Complex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topics_tutorials-msg:imaginary-val is deprecated.  Use topics_tutorials-msg:imaginary instead.")
  (imaginary m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Complex>) ostream)
  "Serializes a message object of type '<Complex>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'real)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'real)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'real)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'real)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imaginary)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imaginary)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imaginary)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imaginary)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Complex>) istream)
  "Deserializes a message object of type '<Complex>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'real)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'real)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'real)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'real)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imaginary)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imaginary)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imaginary)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imaginary)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Complex>)))
  "Returns string type for a message object of type '<Complex>"
  "topics_tutorials/Complex")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Complex)))
  "Returns string type for a message object of type 'Complex"
  "topics_tutorials/Complex")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Complex>)))
  "Returns md5sum for a message object of type '<Complex>"
  "edd2b97280b5093d06d4b67d137acc6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Complex)))
  "Returns md5sum for a message object of type 'Complex"
  "edd2b97280b5093d06d4b67d137acc6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Complex>)))
  "Returns full string definition for message of type '<Complex>"
  (cl:format cl:nil "uint32 real~%uint32 imaginary~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Complex)))
  "Returns full string definition for message of type 'Complex"
  (cl:format cl:nil "uint32 real~%uint32 imaginary~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Complex>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Complex>))
  "Converts a ROS message object to a list"
  (cl:list 'Complex
    (cl:cons ':real (real msg))
    (cl:cons ':imaginary (imaginary msg))
))
