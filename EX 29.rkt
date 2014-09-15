;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 29|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define-struct person (first-name last-name age height weight))
(define (list-length lob)
  (cond
    [(empty? lob) 0]
    [else (+ 1 (list-length (rest lob)))]))
(define (person-image person) (above (rectangle 30 (person-height person) "outline" "black")
 (beside (rectangle 20 20 "outline" "black")
        (rectangle 45 (person-height person) "outline" "black")
        (rectangle 20 20 "outline" "balck"))
(beside (rectangle 20(person-height person) "outline" "black")
        (rectangle 5 (person-height person)  "solid" "white")
        (rectangle 20 (person-height person) "outline" "black"))
) )
(define (draw-peo lst)
  (cond
    [(empty? lst) (rectangle 10 10 "outline" "white")]
    [else  (beside/align "baseline"
                          (person-image(first lst)) 
                          (draw-peo (rest lst)))]
    ))
(draw-peo (list (make-person "Yidong" "Wang" 16 20 30) (make-person "Yidong" "Tan" 16 40 30)))