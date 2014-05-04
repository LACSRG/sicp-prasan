
(define (fast-expt b n)
  (cond
   ((= n 0) 1)
   ((= n 1) b)
   (else (fexpt b n b 1))))

(define (fexpt b n value iter)
  (cond
   ((< (* iter 2) n)
    (fexpt b n (* value value) (* iter 2)))
   ((= iter n) value)
   (else (fexpt b n (* b value) (+ iter 1)))))

(print (format "(fast-expt 2 1) = ~A" (fast-expt 2 1)))

(exit)
