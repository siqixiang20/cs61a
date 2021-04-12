(define (split-at lst n)
 
   (cond ((null? lst)
          (list '() '()))
         ((= 1 n)
          (list (list (car lst)) (cdr lst)))
         (else
          (list ()
                ()))
    )     
 ) 
   
(define (split-at lst n)
 
   (define (split first last n)
     (if (or (null? last) (= n 0))
         (cons first last)
         (split (if (null? first)(list (car last))
                    (append first (list (car last)))) 
                (cdr last) 
                (- n 1))
      )
    )
  (split nil lst n)
 ) 




(define (compose-all funcs)
  
        (lambda (x)
          (if (null? funcs)
              x
              ((compose-all (cdr funcs)) ((car funcs) x))
           )
         )

)

