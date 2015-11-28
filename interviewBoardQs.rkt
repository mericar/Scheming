#lang racket

;returns the factorial (i.e. product of the series n,n-1,n-2 ... n-n)
(define (factorial n)
  (if (= n 0) 1 (* n (factorial(- n 1)))))

;returns max of the two parameter a, b
(define (max a b)
  (cond[(> a b) a]
       [else b]))

;returns max of the three parameters a,b,c
(define (max3 a b c)
  (cond [(> (max a b) c) (max a b)]
      [else c]))

