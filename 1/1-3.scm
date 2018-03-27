#lang scheme
(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (max-two-of-three a b c)
  (if (>= a b)
      (if (>= b c)
          (list a b)
          (list a c))
      (if (>= a c)
          (list b a)
          (list b c))))

(define (sum-max a b c)
  (apply sum-of-squares (max-two-of-three a b c)))
