;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;quadratic-root : Number -> Number
;GIVEN: three arguments of quadratic equation a,b,and c
;RETURNS: the root of the corresponding quadratic equation
;Examples: 
;(quadratic-root 1 2 1) => -1
;(quadratic-root 1 -2 1) => 1
(define (quadratic-root a b c) (/ (+ (- 0 b) (sqrt (- (* b b) 
 (* 4 (* a c))))) (* 2 a)))
(quadratic-root 1 2 1)
(quadratic-root 1 -2 1)