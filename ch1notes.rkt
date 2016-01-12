#lang racket


(define (average-damp f)
  (lambda (y) (average y (f y))))

(define (average a b)
  (/ (+ a b) 2))

(define (cube x)
  (* x (* x x)))



;(function on real numbers) number -> number
;procedure takes a function and an incremental change (dx),
;     the change in x.
(define (derivative g dx)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))



;Lambda-binding function defs are the same as regular functions defs.
(define (add1one)
  (lambda (a) (+ a 1)))

(define (add1two a)
  (+ a 1))



