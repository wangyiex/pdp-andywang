;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 27|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require 2htdp/image)
;;Ex27: Design a function that takes a list of strings and draws the combined text of those strings, separated by spaces.
;;Ex27a: There are two ways to do Ex27 with the functions available to you. Try the way that you did not use to solve Ex27.
(define (list-length lob)
  (cond
    [(empty? lob) 0]
    [else (+ 1 (list-length (rest lob)))]))

(define (com-str lst)
  (cond
    [(empty? lst) ""]
    [else (string-append (first lst) (if (> (list-length (rest lst)) 0) " " "") (com-str (rest lst)))]
    ))

(define (str-text lst)
  (cond
    [(empty? lst) (text "" 20 "black")]
    [else (text (com-str lst) 20 "black")]))

(str-text (list "i" "love" "you" "wangyidong"))
