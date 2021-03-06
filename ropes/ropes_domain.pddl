(define (domain ropes)
   (:predicates (is-rope ?r)
                (is-table ?t)
                (empty-table ?t)
                (clear-rope ?r)
                (on ?r1 ?r2)
                ;(on-table ?r ?t)
                )

(:action move-from-rope
  :parameters (?table1 ?table2 ?rope1 ?rope2)
  :precondition (and   (is-table ?table1)
  			(is-table ?table2)
  			(is-rope ?rope1)
  			(is-rope ?rope2)
  			;(on-table ?rope1 ?table1)
  			;(on-table ?rope2 ?table2)
  			(not (empty-table ?table1))
  			(empty-table ?table2) 
  			(clear-rope ?rope1)
  			(not (clear-rope ?rope2))
  			(on ?rope1 ?rope2))
  :effect (and  (not (empty-table ?table2)) 
  	        (empty-table ?table1)
               (clear-rope ?rope2)
               (not (on ?rope1 ?rope2)))
)
)
