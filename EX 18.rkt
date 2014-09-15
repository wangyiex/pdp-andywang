;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 18|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;the next two sequence of the rectangles are:
;32*64
;64*128
(define (rec-sequence n) 
  ( cond
     [(= n 1) 2]
     [(= (remainder n 2) 0) (* (rec-sequence (- n 1)) 2)]
     [(= (remainder n 2) 1) (rec-sequence(- n 1))]
))
(rec-sequence 6)