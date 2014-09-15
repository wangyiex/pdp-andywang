;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 31|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define (list-length lob)
  (cond
    [(empty? lob) 0]
    [else (+ 1 (list-length (rest lob)))]))
(define (draw-circle lst)
  (cond
    [(empty? lst) ( cons (circle 0 "solid" "black") empty)]
    [else (cons (circle (first lst) "solid" "black") (draw-circle (rest lst)))] 
    ))
(draw-circle (list 1 2 3 4 5))