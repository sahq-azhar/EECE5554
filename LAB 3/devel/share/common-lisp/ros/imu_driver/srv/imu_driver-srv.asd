
(cl:in-package :asdf)

(defsystem "imu_driver-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ConvertToQuaternion" :depends-on ("_package_ConvertToQuaternion"))
    (:file "_package_ConvertToQuaternion" :depends-on ("_package"))
  ))