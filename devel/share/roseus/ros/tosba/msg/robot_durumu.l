;; Auto-generated. Do not edit!


(when (boundp 'tosba::robot_durumu)
  (if (not (find-package "TOSBA"))
    (make-package "TOSBA"))
  (shadow 'robot_durumu (find-package "TOSBA")))
(unless (find-package "TOSBA::ROBOT_DURUMU")
  (make-package "TOSBA::ROBOT_DURUMU"))

(in-package "ROS")
;;//! \htmlinclude robot_durumu.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tosba::robot_durumu
  :super ros::object
  :slots (_Header _robot_id _is_ready ))

(defmethod tosba::robot_durumu
  (:init
   (&key
    ((:Header __Header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) 0)
    ((:is_ready __is_ready) nil)
    )
   (send-super :init)
   (setq _Header __Header)
   (setq _robot_id (round __robot_id))
   (setq _is_ready __is_ready)
   self)
  (:Header
   (&rest __Header)
   (if (keywordp (car __Header))
       (send* _Header __Header)
     (progn
       (if __Header (setq _Header (car __Header)))
       _Header)))
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:is_ready
   (&optional (__is_ready :null))
   (if (not (eq __is_ready :null)) (setq _is_ready __is_ready)) _is_ready)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _Header
    (send _Header :serialization-length)
    ;; int32 _robot_id
    4
    ;; bool _is_ready
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _Header
       (send _Header :serialize s)
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; bool _is_ready
       (if _is_ready (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _Header
     (send _Header :deserialize buf ptr-) (incf ptr- (send _Header :serialization-length))
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_ready
     (setq _is_ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tosba::robot_durumu :md5sum-) "8617436c5c51524b82803c8a17f9596d")
(setf (get tosba::robot_durumu :datatype-) "tosba/robot_durumu")
(setf (get tosba::robot_durumu :definition-)
      "Header Header
int32 robot_id
bool is_ready 
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :tosba/robot_durumu "8617436c5c51524b82803c8a17f9596d")


