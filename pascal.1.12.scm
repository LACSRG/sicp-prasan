;; Exercise 1.12 from SICP

(define (pascal r c)
  (cond  
   ((= r 0) 1)  
   ((= c 0) 1)
   ((= c r) 1)
   (else (+ 
	  (pascal (- r 1) c) 
	  (pascal (- r 1) (- c 1))
	  ))
   ))
