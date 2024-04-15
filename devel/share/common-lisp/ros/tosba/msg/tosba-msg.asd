
(cl:in-package :asdf)

(defsystem "tosba-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "robot_durumu" :depends-on ("_package_robot_durumu"))
    (:file "_package_robot_durumu" :depends-on ("_package"))
  ))