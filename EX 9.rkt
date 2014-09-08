;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; remainder : Number Number -> Number
; GIVEN : two number
; RETURNS : the remainder of dividing the first by the second integer
; Examples : 
; (remainder 9 2) => 1
; (remainder 3 4) => 3
(remainder 4 2)
(remainder 7 -3)
(modulo 7 -3)
; even : Number -> Boolean
; GIVEN : a number
; RETURNS : true if n can divided by 2 and false if not.
; Examples : 
; (even 2) => true
; (even 3) => false
(define (even n) 
 (if (= (remainder n 2) 0) 
     true
     false))
(even 2)
(even 3)