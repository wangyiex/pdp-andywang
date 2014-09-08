;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; sum-max : Number Number Number -> Number
; GIVEN: three numbers
; RETURNS: the sum of the two larger number
; Examples:
; (sum-max 1 2 3 )  => 5 ; (sum-max 7 8 9)  => 17
(define (sum-max a b c)
  (cond 
    [(and (< a b) (< a c)) (+ b c)]
    [(and (< a b) (> a c)) (+ a b)]
    [(and (> a b) (< b c)) (+ a c)])
  )
(sum-max 1 2 3) 
(sum-max 7 8 9)