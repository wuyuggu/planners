;Header and description

(define (domain ambulancias)

;remove requirements that are not needed
(:requirements :strips :typing :conditional-effects :negative-preconditions)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle

    ambulancia localizacion enfermo - object

)

(:predicates ;todo: define predicates here

    (pos_enfermo ?e - enfermo ?l - localizacion)
    (enlace ?l1 ?l2 - localizacion)
    (posicion ?a - ambulancia ?l - localizacion)
    (lleno ?e - enfermo ?a - ambulancia)

)


(:action conducir_ambulancia ; ambulancia de l1 a l2
    :parameters (?a - ambulancia ?l1 ?l2 - localizacion)
    :precondition (and 
        (posicion ?a ?l1)
        (enlace ?l1 ?l2)
    )
    :effect (and 
        (not (posicion ?a ?l1))
        (posicion ?a ?l2)
    )
)

(:action subir ; subir enfermo ambulancia
    :parameters (?a - ambulancia ?e - enfermo ?l - localizacion)
    :precondition (and
        (pos_enfermo ?e ?l)
        (posicion ?a ?l)
        (not (lleno ?e ?a))
    )
    :effect (and 
        (not (pos_enfermo ?e ?l))
        (lleno ?e ?a)
    )
)

(:action bajar ; bajar enfermo hospital
    :parameters (?a - ambulancia ?e - enfermo ?l - localizacion)
    :precondition (and
        (posicion ?a ?l)
        (lleno ?e ?a)
    )
    :effect (and 
        (pos_enfermo ?e ?l)
        (not (lleno ?e ?a))
    )
)

)