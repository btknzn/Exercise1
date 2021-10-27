;; Auto-generated. Do not edit!


(when (boundp 'topics_tutorials::Complex)
  (if (not (find-package "TOPICS_TUTORIALS"))
    (make-package "TOPICS_TUTORIALS"))
  (shadow 'Complex (find-package "TOPICS_TUTORIALS")))
(unless (find-package "TOPICS_TUTORIALS::COMPLEX")
  (make-package "TOPICS_TUTORIALS::COMPLEX"))

(in-package "ROS")
;;//! \htmlinclude Complex.msg.html


(defclass topics_tutorials::Complex
  :super ros::object
  :slots (_real _imaginary ))

(defmethod topics_tutorials::Complex
  (:init
   (&key
    ((:real __real) 0)
    ((:imaginary __imaginary) 0)
    )
   (send-super :init)
   (setq _real (round __real))
   (setq _imaginary (round __imaginary))
   self)
  (:real
   (&optional __real)
   (if __real (setq _real __real)) _real)
  (:imaginary
   (&optional __imaginary)
   (if __imaginary (setq _imaginary __imaginary)) _imaginary)
  (:serialization-length
   ()
   (+
    ;; uint32 _real
    4
    ;; uint32 _imaginary
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _real
       (write-long _real s)
     ;; uint32 _imaginary
       (write-long _imaginary s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _real
     (setq _real (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _imaginary
     (setq _imaginary (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get topics_tutorials::Complex :md5sum-) "edd2b97280b5093d06d4b67d137acc6b")
(setf (get topics_tutorials::Complex :datatype-) "topics_tutorials/Complex")
(setf (get topics_tutorials::Complex :definition-)
      "uint32 real
uint32 imaginary

")



(provide :topics_tutorials/Complex "edd2b97280b5093d06d4b67d137acc6b")


