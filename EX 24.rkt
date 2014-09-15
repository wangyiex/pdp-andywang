;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 24|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define (list-length lst)
      (cond
        [(empty? lst) 0]
        [else (+ 1 (list-length (rest lst)))]))
(define (multiply lst)
      (cond
        [(empty? lst) 0]
        [(= (first lst) 0) 0]
        [else (* (first lst) (if (> (list-length (rest lst)) 0) (multiply (rest lst)) 1))]))
(multiply (list  1 2 0 4))