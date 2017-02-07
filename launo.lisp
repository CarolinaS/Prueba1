
setq a ' (1 (2 3) 4 5 (6 (7 8 )) 9 10)

(defun sub (lst)
    (if (null lst) 
        nil 
        (if (atom(car lst))
            (cons (car lst)(sub (cdr lst)))
            (sub (cdr lst)))  ))



(defun atomo (lst)
    (if (null lst) 
        nil 
        (if (not (atom(car lst)))
            (cons (car lst)(atomo (cdr lst)))
            (atomo (cdr lst)))  ))

 (defun aplanar (lst)
    (cond        ((null lst) nil )
        ((atom (car lst)) (cons (car lst) (aplanar (cdr lst))))
        (t (append (aplanar (car lst)) (aplanar (cdr lst))))))


(defun contarMulTres (lst)
    (if (null lst) 
        nil 
        (if (eql (mod (car lst) 3) 0)
            (cons  (car lst) (contarMulTres (cdr lst)))
            (contarMulTres (cdr lst))) ))


(defun contarDos (lst)
    (if (null lst) 
        nil 
        (if (eql (mod (car lst) 2) 0)
            (cons  (car lst) (contardos (cdr lst)))
            (contardos (cdr lst))) ))



(defun contarMulTres (lst)
    (if (null lst) 
        nil 
        (if (eql (mod (car lst) 3) 0)
            (cons  (car lst) (contarMulTres (cdr lst)))
            (contarMulTres (cdr lst))) ))



setq b (contarmultres(aplanar (atomo a)))


setq c (contardos (sub a))

list b c
 list( contarmultres(aplanar (atomo a))) ( contardos (sub a))