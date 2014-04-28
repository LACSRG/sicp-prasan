;; Exercise 1.12 from SICP

(define (pascal row col)
  (cond  
   ((= row 0) 1)  
   ((= col 0) 1)
   ((= col r) 1)
   ((> col r) #f)
   (else (+ 
	  (pascal (- row 1) col) 
	  (pascal (- row 1) (- col 1))
	  ))
   ))
