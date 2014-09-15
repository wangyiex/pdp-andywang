;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 32|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define (list-length lob)
  (cond
    [(empty? lob) 0]
    [else (+ 1 (list-length (rest lob)))]))
(define-struct point(x y))
(define (re-dis lst) 
  (cond
  [(empty? lst) 0 ]
  [ else  (+(+ (point-x(first lst)) (point-y (first lst))) (if (> (list-length lst) 0) (re-dis (rest lst)) 0) )]))
(re-dis (list (make-point 30 50) (make-point 20 50)))

