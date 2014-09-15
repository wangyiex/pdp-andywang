;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 28|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define (list-length lob)
  (cond
    [(empty? lob) 0]
    [else (+ 1 (list-length (rest lob)))]))

(define (com-str lst)
  (cond
    [(empty? lst) ""]
    [else (string-append (first lst) (if (> (list-length (rest lst)) 0) " " "") (com-str (rest lst)))]
    ))
(define (com-lst lst-lst)
  (cond
  [(empty? lst-lst) ""]
  [else (string-append (com-str (first lst-lst)) " " (if(> (list-length (rest lst-lst)) 0) (com-lst (rest lst-lst)) "" ))]))
(define (str-text lst-lst)
  (cond
    [(empty? lst-lst) (text " " 20 "black")]
    [else (text (com-lst lst-lst) 20 "black")]))
(str-text  (list (list "i" "love") (list "you") (list "wangyidong")))