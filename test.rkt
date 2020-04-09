#lang racket
(require ffi/unsafe)

;; add the c library
(define graph-lib (ffi-lib
                  (build-path (current-directory) "graphviz")))


;; set the rust add fine to a variable
(define hello (get-ffi-obj "message" graph-lib
                              (_fun -> _void)))


(define add (get-ffi-obj "add" graph-lib
                             (_fun _int _int -> _int)))
                             
(define add_pointer (get-ffi-obj "add_pointer" graph-lib
                             (_fun _pointer _pointer -> _void)))

(add 67 33)


(define j 10)
(define k 30)
(add_pointer j k)
(println j);