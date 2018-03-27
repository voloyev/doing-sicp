#lang scheme
(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (aveage guess (/ x guess)))

(define (sqrt x)
  (sqrt-iter 1.0 x))