#lang scheme
;;;; Ex 1.1
(- 9 1)
;;8
(/ 6 2)
;; 3
(+ (* 2 4) (- 4 6))
;;6
(define  a 3)
a
3
(define  b (+ a 1))
b
;;4
(+ a b (* a b))
;;19
(= a b)
;; #f
(if (and (> b a) (< b (* a b)))
    b
    a)
;; 4
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
;; 16
(+ 2 (if (> b a) b a))
;; 6

;;;; Ex 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))

;;;; Ex 1.3
(define (sqr_big a b c)
  (cond ((and (> a b) (> a c) a))
        ((and (< a b) (> b c) b))))
(sqr_big 10 5 3)