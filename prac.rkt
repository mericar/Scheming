#lang racket

(define size 100)

(define vtr (make-vector size 0))
(define mtrx100 (make-vector size vtr))

(define (factorial n)
  (cond [(zero? n) 1]
        [else (* n (factorial (- n 1)))]
        ))

(define (square i) (* i i))

(define (sum-of-squares a b)
  (+ (square a) (square b)))


(define (absval n)
  (cond [(< n 0) (- n)]
        [(= n 0) 0]
        [(> n 0) n]))

(define li empty)

(define (fibonacci n)
  (cond [(= n 0) 0]
        [(= n 1) 1]
        [else (+ (fibonacci (- n 1))
                 (fibonacci (- n 2)))]
        ))

(define (fibo n)
  (fibo-iter 1 0 n))

(define (fibo-iter a b count)
  (cond [(= count 0) b]
        [else (fibo-iter (+ a b) a (- count 1))]))
