#lang racket
(require rackunit)
;
(module gudetama racket)
(provide palindrome)
 (require (lib "racket/date.rkt"))
; printing the day/date using racket/date.rkt
 (printf "Today is ~s\n"
            (date->string (seconds->date (current-seconds))))

;function
(define palindrome (lambda (x) (equal? x (reverse x))))
(define (reply s)
  (if (equal? "hello" (substring s 0 5))
      "hi!"
      "huh?"))
(define (match-type y)
 (match y
 ((? string? y) "I'm a string!")
 ((? number? y) "I'm a number!")
 ((? boolean? y) "I'm a boolean!")
 ((? list? y) "I'm a list!")
 (_ "I'm something else!")))
(define (triple v)
  ((if (string? v) string-append +) v v v))

(define sayHello
  (lambda (given [midname (if (equal? given "Imad")
                              "Muhm'd"
                              "Obaid")])
    (string-append "Hello, " given " " midname)))

(define (reply-more s)
  (cond
   [(equal? "hello" (substring s 0 5))
    "hi!"]
   [(equal? "goodbye" (substring s 0 7))
    "bye!"]
   [(equal? "?" (substring s (- (string-length s) 1)))
    "I don't know"]
   [else "huh?"]))

;using function
(palindrome '(1 2 3 4 5 4 2 1))
(palindrome '("a b b a"))
(palindrome '(1 2 3 3 2 1))
(palindrome '(1 2 2 1))
(reply "hello najla")
(triple "nouf ")
(triple (triple "nouf "))
(triple "Hi i am bla bla how are you? ")
(match-type "najla")
(match-type 1)
(match-type #f)
(match-type "hello")
(match-type "#C")
(sayHello "Nouf")
(sayHello "Najla")
(sayHello "Imad")
(reply-more "Hello World!")
(reply-more "hello!")
