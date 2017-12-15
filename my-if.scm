#lang scheme
;; Ex 1.6 && 1.7
(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.01))

(define (improve guess x)
  (average  guess (/ x guess)))

(define (my-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;; here infinite recursion 
(define (sqrt-iter guess x)
  (my-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))