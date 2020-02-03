#lang racket
(require ffi/unsafe)

(define rust-lib (ffi-lib
                  (build-path (current-directory) "racketffi" "target" "debug" "racketffi")))


(define rust-add (get-ffi-obj "add_from_rust" rust-lib
                              (_fun _int _int -> _int)))

(rust-add 5 4)