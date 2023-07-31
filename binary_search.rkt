#lang racket

; The function takes a sorted list, a low index, a high index, and the number to find
(define (binary-search lst low high x)
  (cond
    [(> low high) -1] ; Return -1 if the element is not found
    [else
     (let ([mid (quotient (+ low high) 2)]) ; Calculate mid
       (cond
         [(> (list-ref lst mid) x) (binary-search lst low (- mid 1) x)] ; If x is smaller, ignore right half
         [(< (list-ref lst mid) x) (binary-search lst (+ mid 1) high x)] ; If x is greater, ignore left half
         [else mid]))])) ; Element found

; Test the function
(define lst1 (list 2 3 4 10 40))
(define lst2 (list 2 3 4 10 42 13 20 10002 202 1 33 98 129))
(define x 10)
(define x0 98)

(displayln (binary-search lst1 0 (- (length lst1) 1) x)) ; It should print 3
(displayln (binary-search lst2 0 (- (length lst2) 1) x0));
