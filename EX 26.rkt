;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 26|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;;Ex26: Design a function that takes a list of Points and draws a solid blue circle with radius 10 at every Point in that list into a 300x300 scene.
(define-struct point(x y))
(define (draw-circle lop) 
  (cond
  [(empty? lop) (empty-scene 300 300) ]
  [ else  (place-image (circle 10 "solid" "green")
            (point-x (first lop))  (point-y (first lop))
             (draw-circle( rest lop))
               )]))

(draw-circle (list (make-point 150 130)(make-point 10 10)))