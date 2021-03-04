(define (problem problema) (:domain ambulancias)
(:objects 

    enfermo1 enfermo2 - enfermo
    ambulancia1 - ambulancia
    l1 l2 l3 l4 - localizacion

)

(:init

    (pos_enfermo enfermo1 l4)
    (pos_enfermo enfermo2 l3)

    (enlace l1 l2)
    (enlace l2 l1)
    (enlace l4 l2)
    (enlace l2 l4)
    (enlace l3 l4)
    (enlace l4 l3)

    (posicion ambulancia1 l1)
    ;todo: put the initial state's facts and numeric values here
)

(:goal (and

    (pos_enfermo enfermo1 l1)
    (pos_enfermo enfermo2 l1)
    ;todo: put the goal condition here
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
