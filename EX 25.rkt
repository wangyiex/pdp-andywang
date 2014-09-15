;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 25|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;;(define (iftrue lst)
;;  (if (and (first lst)  (iftrue (rest lst)))
;;       true
;;       false))
;;(iftrue (list true true))
(define (list-length lob)
  (cond
    [(empty? lob) 0]
    [else (+ 1 (list-length (rest lob)))]))

(define (if-true lob)
  (cond
    [(empty? lob) false]
    [else (if (first lob) (if (> (list-length (rest lob)) 0) (if-true (rest lob)) true) false)]))

(if-true (list true true false true))
(if-true (list true true))
(if-true (list true))
(if-true (list false true true))
(if-true empty)