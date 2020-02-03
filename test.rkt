#lang racket
(require ffi/unsafe)

;; add the rust library
(define rust-lib (ffi-lib
                  (build-path (current-directory) "racketffi" "target" "debug" "racketffi")))


;; set the rust add fine to a variable
(define rust-add (get-ffi-obj "add_from_rust" rust-lib
                              (_fun _int _int -> _int)))

;; call the function
(rust-add 5 4)