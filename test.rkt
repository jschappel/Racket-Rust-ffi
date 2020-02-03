#lang racket
(require ffi/unsafe)

(define rust-lib (ffi-lib
                  (build-path (current-directory) "racketffi" "target" "debug" "racketffi")))