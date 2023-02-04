;; Auto-generated. Do not edit!


(when (boundp 'gps_driver::gps)
  (if (not (find-package "GPS_DRIVER"))
    (make-package "GPS_DRIVER"))
  (shadow 'gps (find-package "GPS_DRIVER")))
(unless (find-package "GPS_DRIVER::GPS")
  (make-package "GPS_DRIVER::GPS"))

(in-package "ROS")
;;//! \htmlinclude gps.msg.html


(defclass gps_driver::gps
  :super ros::object
  :slots (_header _latitude _longitude _altitude _utm_easting _utm_northing _zone _letter ))

(defmethod gps_driver::gps
  (:init
   (&key
    ((:header __header) "")
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:utm_easting __utm_easting) 0.0)
    ((:utm_northing __utm_northing) 0.0)
    ((:zone __zone) 0)
    ((:letter __letter) "")
    )
   (send-super :init)
   (setq _header (string __header))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _utm_easting (float __utm_easting))
   (setq _utm_northing (float __utm_northing))
   (setq _zone (round __zone))
   (setq _letter (string __letter))
   self)
  (:header
   (&optional __header)
   (if __header (setq _header __header)) _header)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:utm_easting
   (&optional __utm_easting)
   (if __utm_easting (setq _utm_easting __utm_easting)) _utm_easting)
  (:utm_northing
   (&optional __utm_northing)
   (if __utm_northing (setq _utm_northing __utm_northing)) _utm_northing)
  (:zone
   (&optional __zone)
   (if __zone (setq _zone __zone)) _zone)
  (:letter
   (&optional __letter)
   (if __letter (setq _letter __letter)) _letter)
  (:serialization-length
   ()
   (+
    ;; string _header
    4 (length _header)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _utm_easting
    8
    ;; float64 _utm_northing
    8
    ;; int64 _zone
    8
    ;; string _letter
    4 (length _letter)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _header
       (write-long (length _header) s) (princ _header s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _utm_easting
       (sys::poke _utm_easting (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _utm_northing
       (sys::poke _utm_northing (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _zone
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _zone (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _zone) (= (length (_zone . bv)) 2)) ;; bignum
              (write-long (ash (elt (_zone . bv) 0) 0) s)
              (write-long (ash (elt (_zone . bv) 1) -1) s))
             ((and (class _zone) (= (length (_zone . bv)) 1)) ;; big1
              (write-long (elt (_zone . bv) 0) s)
              (write-long (if (>= _zone 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _zone s)(write-long (if (>= _zone 0) 0 #xffffffff) s)))
     ;; string _letter
       (write-long (length _letter) s) (princ _letter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _header
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _header (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _utm_easting
     (setq _utm_easting (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _utm_northing
     (setq _utm_northing (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _zone
#+(or :alpha :irix6 :x86_64)
      (setf _zone (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _zone (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _letter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _letter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gps_driver::gps :md5sum-) "907d5960bda1dc0a60523da9639ca85b")
(setf (get gps_driver::gps :datatype-) "gps_driver/gps")
(setf (get gps_driver::gps :definition-)
      "string header
float64 latitude
float64 longitude
float64 altitude
float64 utm_easting
float64 utm_northing
int64 zone
string letter

")



(provide :gps_driver/gps "907d5960bda1dc0a60523da9639ca85b")


