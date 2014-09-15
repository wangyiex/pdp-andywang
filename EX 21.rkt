;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 21|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define-struct person (first-name last-name age height weight))
;; A Person is a (make-person String String Number Number Number).
;; It represents the imformation of a single person.
;; Interpretation:
;;   first-name: the first-name of this person
;;   last-name:  rhe last-name of this person
;;   age:  the age of this person
;;   height: the height of this person
;;   weight: the weight of this person
(define (person-image person) (above (rectangle 30 (person-height person) "outline" "black")
 (beside (rectangle 20 20 "outline" "black")
        (rectangle 45 (person-height person) "outline" "black")
        (rectangle 20 20 "outline" "balck"))
(beside (rectangle 20(person-height person) "outline" "black")
        (rectangle 5 (person-height person)  "solid" "white")
        (rectangle 20 (person-height person) "outline" "black"))


) )
(person-image (make-person "Yidong" "Wang" 16 20 30))
(person-image (make-person "Yidong" "Tan" 16 40 30))
