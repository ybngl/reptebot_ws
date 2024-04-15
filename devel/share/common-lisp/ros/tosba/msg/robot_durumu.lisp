; Auto-generated. Do not edit!


(cl:in-package tosba-msg)


;//! \htmlinclude robot_durumu.msg.html

(cl:defclass <robot_durumu> (roslisp-msg-protocol:ros-message)
  ((Header
    :reader Header
    :initarg :Header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (is_ready
    :reader is_ready
    :initarg :is_ready
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass robot_durumu (<robot_durumu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_durumu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_durumu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tosba-msg:<robot_durumu> is deprecated: use tosba-msg:robot_durumu instead.")))

(cl:ensure-generic-function 'Header-val :lambda-list '(m))
(cl:defmethod Header-val ((m <robot_durumu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tosba-msg:Header-val is deprecated.  Use tosba-msg:Header instead.")
  (Header m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <robot_durumu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tosba-msg:robot_id-val is deprecated.  Use tosba-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'is_ready-val :lambda-list '(m))
(cl:defmethod is_ready-val ((m <robot_durumu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tosba-msg:is_ready-val is deprecated.  Use tosba-msg:is_ready instead.")
  (is_ready m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_durumu>) ostream)
  "Serializes a message object of type '<robot_durumu>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_ready) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_durumu>) istream)
  "Deserializes a message object of type '<robot_durumu>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_ready) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_durumu>)))
  "Returns string type for a message object of type '<robot_durumu>"
  "tosba/robot_durumu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_durumu)))
  "Returns string type for a message object of type 'robot_durumu"
  "tosba/robot_durumu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_durumu>)))
  "Returns md5sum for a message object of type '<robot_durumu>"
  "8617436c5c51524b82803c8a17f9596d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_durumu)))
  "Returns md5sum for a message object of type 'robot_durumu"
  "8617436c5c51524b82803c8a17f9596d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_durumu>)))
  "Returns full string definition for message of type '<robot_durumu>"
  (cl:format cl:nil "Header Header~%int32 robot_id~%bool is_ready ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_durumu)))
  "Returns full string definition for message of type 'robot_durumu"
  (cl:format cl:nil "Header Header~%int32 robot_id~%bool is_ready ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_durumu>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Header))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_durumu>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_durumu
    (cl:cons ':Header (Header msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':is_ready (is_ready msg))
))
