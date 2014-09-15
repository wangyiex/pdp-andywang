;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 27a|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define (list-length lob)
  (cond
    [(empty? lob) 0]
    [else (+ 1 (list-length (rest lob)))]))

(define (com-str lst)
  (cond
    [(empty? lst) "there is no string in this list"]
    [else (beside (text (string-append (first lst)) 20 "balck")  (if (> (list-length (rest lst)) 0) (com-str (rest lst)) "")) 20 "black"]
    ))
(com-str (list "i" "love" "you" "wangyidong"))
(com-str empty)