;; Auto-generated. Do not edit!


(when (boundp 'imu_driver::ConvertToQuaternion)
  (if (not (find-package "IMU_DRIVER"))
    (make-package "IMU_DRIVER"))
  (shadow 'ConvertToQuaternion (find-package "IMU_DRIVER")))
(unless (find-package "IMU_DRIVER::CONVERTTOQUATERNION")
  (make-package "IMU_DRIVER::CONVERTTOQUATERNION"))
(unless (find-package "IMU_DRIVER::CONVERTTOQUATERNIONREQUEST")
  (make-package "IMU_DRIVER::CONVERTTOQUATERNIONREQUEST"))
(unless (find-package "IMU_DRIVER::CONVERTTOQUATERNIONRESPONSE")
  (make-package "IMU_DRIVER::CONVERTTOQUATERNIONRESPONSE"))

(in-package "ROS")





(defclass imu_driver::ConvertToQuaternionRequest
  :super ros::object
  :slots (_roll _pitch _yaw _x _y _z _w ))

(defmethod imu_driver::ConvertToQuaternionRequest
  (:init
   (&key
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:w __w) 0.0)
    )
   (send-super :init)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _w (float __w))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _w
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w
       (sys::poke _w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w
     (setq _w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass imu_driver::ConvertToQuaternionResponse
  :super ros::object
  :slots ())

(defmethod imu_driver::ConvertToQuaternionResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass imu_driver::ConvertToQuaternion
  :super ros::object
  :slots ())

(setf (get imu_driver::ConvertToQuaternion :md5sum-) "65d8d4f0f20a4f15d3f80a0c317b43cd")
(setf (get imu_driver::ConvertToQuaternion :datatype-) "imu_driver/ConvertToQuaternion")
(setf (get imu_driver::ConvertToQuaternion :request) imu_driver::ConvertToQuaternionRequest)
(setf (get imu_driver::ConvertToQuaternion :response) imu_driver::ConvertToQuaternionResponse)

(defmethod imu_driver::ConvertToQuaternionRequest
  (:response () (instance imu_driver::ConvertToQuaternionResponse :init)))

(setf (get imu_driver::ConvertToQuaternionRequest :md5sum-) "65d8d4f0f20a4f15d3f80a0c317b43cd")
(setf (get imu_driver::ConvertToQuaternionRequest :datatype-) "imu_driver/ConvertToQuaternionRequest")
(setf (get imu_driver::ConvertToQuaternionRequest :definition-)
      "# Request
float64 roll
float64 pitch
float64 yaw

# Response
float64 x
float64 y
float64 z
float64 w


---
")

(setf (get imu_driver::ConvertToQuaternionResponse :md5sum-) "65d8d4f0f20a4f15d3f80a0c317b43cd")
(setf (get imu_driver::ConvertToQuaternionResponse :datatype-) "imu_driver/ConvertToQuaternionResponse")
(setf (get imu_driver::ConvertToQuaternionResponse :definition-)
      "# Request
float64 roll
float64 pitch
float64 yaw

# Response
float64 x
float64 y
float64 z
float64 w


---
")



(provide :imu_driver/ConvertToQuaternion "65d8d4f0f20a4f15d3f80a0c317b43cd")


