;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 30|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define (list-length lob)
  (cond
    [(empty? lob) 0]
    [else (+ 1 (list-length (rest lob)))]))

(define (boolean-reversed lst)
  (cond
    [(empty? lst) empty]
    [else (cons(not (first lst)) (if (> (list-length lst) 0) (boolean-reversed (rest lst)) (cons (rest lst) )  ))]
   ))
(boolean-reversed (list false true false )) 