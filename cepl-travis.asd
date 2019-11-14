;;;; cepl-travis.asd

(asdf:defsystem #:cepl-travis
  :description "Describe cepl-travis here"
  :author "azimut <azimut.github@protonmail.com>"
  :license  "MIT"
  :version "0.0.1"
  :serial t
  :depends-on (#:cepl
               #:temporal-functions
               #:with-setf
               #:rtg-math.vari
               #:cepl.sdl2
               #:nineveh
               #:livesupport
               #:cepl.skitter.sdl2
               #:dirt)
  :defsystem-depends-on (:deploy)
  :build-operation "deploy-op"
  :build-pathname "raptor-splitter"
  :entry-point "cepl-travis::playit"
  :components ((:file "package")
               (:file "cepl-travis")))
