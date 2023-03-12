; Auto-generated. Do not edit!


(cl:in-package imu_driver-srv)


;//! \htmlinclude ConvertToQuaternion-request.msg.html

(cl:defclass <ConvertToQuaternion-request> (roslisp-msg-protocol:ros-message)
  ((roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConvertToQuaternion-request (<ConvertToQuaternion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertToQuaternion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertToQuaternion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imu_driver-srv:<ConvertToQuaternion-request> is deprecated: use imu_driver-srv:ConvertToQuaternion-request instead.")))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <ConvertToQuaternion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_driver-srv:roll-val is deprecated.  Use imu_driver-srv:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <ConvertToQuaternion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_driver-srv:pitch-val is deprecated.  Use imu_driver-srv:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <ConvertToQuaternion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_driver-srv:yaw-val is deprecated.  Use imu_driver-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ConvertToQuaternion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_driver-srv:x-val is deprecated.  Use imu_driver-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <ConvertToQuaternion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_driver-srv:y-val is deprecated.  Use imu_driver-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <ConvertToQuaternion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_driver-srv:z-val is deprecated.  Use imu_driver-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <ConvertToQuaternion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_driver-srv:w-val is deprecated.  Use imu_driver-srv:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertToQuaternion-request>) ostream)
  "Serializes a message object of type '<ConvertToQuaternion-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertToQuaternion-request>) istream)
  "Deserializes a message object of type '<ConvertToQuaternion-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertToQuaternion-request>)))
  "Returns string type for a service object of type '<ConvertToQuaternion-request>"
  "imu_driver/ConvertToQuaternionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertToQuaternion-request)))
  "Returns string type for a service object of type 'ConvertToQuaternion-request"
  "imu_driver/ConvertToQuaternionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertToQuaternion-request>)))
  "Returns md5sum for a message object of type '<ConvertToQuaternion-request>"
  "65d8d4f0f20a4f15d3f80a0c317b43cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertToQuaternion-request)))
  "Returns md5sum for a message object of type 'ConvertToQuaternion-request"
  "65d8d4f0f20a4f15d3f80a0c317b43cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertToQuaternion-request>)))
  "Returns full string definition for message of type '<ConvertToQuaternion-request>"
  (cl:format cl:nil "# Request~%float64 roll~%float64 pitch~%float64 yaw~%~%# Response~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertToQuaternion-request)))
  "Returns full string definition for message of type 'ConvertToQuaternion-request"
  (cl:format cl:nil "# Request~%float64 roll~%float64 pitch~%float64 yaw~%~%# Response~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertToQuaternion-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertToQuaternion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertToQuaternion-request
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':w (w msg))
))
;//! \htmlinclude ConvertToQuaternion-response.msg.html

(cl:defclass <ConvertToQuaternion-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ConvertToQuaternion-response (<ConvertToQuaternion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertToQuaternion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertToQuaternion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imu_driver-srv:<ConvertToQuaternion-response> is deprecated: use imu_driver-srv:ConvertToQuaternion-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertToQuaternion-response>) ostream)
  "Serializes a message object of type '<ConvertToQuaternion-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertToQuaternion-response>) istream)
  "Deserializes a message object of type '<ConvertToQuaternion-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertToQuaternion-response>)))
  "Returns string type for a service object of type '<ConvertToQuaternion-response>"
  "imu_driver/ConvertToQuaternionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertToQuaternion-response)))
  "Returns string type for a service object of type 'ConvertToQuaternion-response"
  "imu_driver/ConvertToQuaternionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertToQuaternion-response>)))
  "Returns md5sum for a message object of type '<ConvertToQuaternion-response>"
  "65d8d4f0f20a4f15d3f80a0c317b43cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertToQuaternion-response)))
  "Returns md5sum for a message object of type 'ConvertToQuaternion-response"
  "65d8d4f0f20a4f15d3f80a0c317b43cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertToQuaternion-response>)))
  "Returns full string definition for message of type '<ConvertToQuaternion-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertToQuaternion-response)))
  "Returns full string definition for message of type 'ConvertToQuaternion-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertToQuaternion-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertToQuaternion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertToQuaternion-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConvertToQuaternion)))
  'ConvertToQuaternion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConvertToQuaternion)))
  'ConvertToQuaternion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertToQuaternion)))
  "Returns string type for a service object of type '<ConvertToQuaternion>"
  "imu_driver/ConvertToQuaternion")