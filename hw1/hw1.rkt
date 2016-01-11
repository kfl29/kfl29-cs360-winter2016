;;
;; DO NOT REMOVE THESE TWO LINES
;;
#lang racket
(provide (all-defined-out))

;;
;; Problem 1
;;

(define (deep-count l)
  (cond [(null? l) 0]
        [(pair? l) (+ 1 (deep-count (cdr l)))]
        [else      (+ 1 (deep-count (cdr l)))])) 
;;
;; Problem 2
;;
(define (helper l1 l2)
  (cons l2 l1))

(define (reverse l)
  (cond [(null? l) 0]
        [else      helper(car l cdr l)]))

;;
;; Problem 3
;;

(define (range rlist)
  (let (
         (start (car rlist))
         (step (car (cdr rlist)))
         (end (cdr (cdr rlist))))
    (cond [(> start end) '()]
          [(> step (- end start))]
          [else (cons start (range (list (+ start step) step end)))]
          )))

;;
;; Problem 4
;;

(define (seq f rlist)
  #f)

;;
;; Problem 5: Homework Statistics
;;

