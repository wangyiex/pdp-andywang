;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EX 1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;an expression whose values the number of seconds in a leap year
(* (* (* 366 24) 60) 60)
;one expression that have the same value
(* 366 (* 24 (* 60 60)))
;another expression that have the same value
(* 1 31622400)