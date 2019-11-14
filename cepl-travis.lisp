;;;; cepl-travis.lisp

(in-package #:cepl-travis)

(defvar *bs*         nil)
(defvar *fbo*        nil)
(defvar *dimensions* '(341 192))

(defun init ()
  #+slynk
  (slynk-mrepl::send-prompt (find (bt:current-thread) (slynk::channels)
                                  :key #'slynk::channel-thread))
  (unless *bs*
    (setf *bs* (make-buffer-stream nil :primitive :points)))
  (when *fbo* (free *fbo*))
  (setf *fbo* (make-fbo
               `(0 :dimensions ,*dimensions*  :element-type :rgba16f)
               `(:d :dimensions ,*dimensions*))))

(defun-g simple-frag ((uv :vec2))
  (v! uv 0 1))

(defpipeline-g simple-pipe (:points)
  :fragment (simple-frag :vec2))

(defun draw! ()
  (setf (resolution (current-viewport))
        (surface-resolution (current-surface)))
  (when (keyboard-button (keyboard) key.escape)
    (play-render :stop))
  (as-frame
   (map-g #'simple-pipe *bs*)))

(def-simple-main-loop play-render (:on-start #'init)
  (draw!))

(defun playit ()
  (play-render :start))
