(define (domain colorPipes)

  (:predicates
   (is-red ?r ?c)
   (is-green ?r ?c)
   (is-blue ?r ?c)
   (is-yellow ?r ?c)   
   (next-row ?r1 ?r2)
   (next-col ?c1 ?c2)
  )

  (:action move-red-down
    :parameters (?row ?col ?next-row)
    :precondition (and (is-red ?row ?col)
    			(next-row ?row ?next-row)
                       (not (is-green ?next-row ?col))
                       (not (is-blue ?next-row ?col))
                       (not (is-yellow ?next-row ?col)))
    :effect (is-red ?next-row ?col)
  )

  (:action move-green-down
    :parameters (?row ?col ?next-row)
    :precondition (and (is-green ?row ?col)
    			(next-row ?row ?next-row)
                       (not (is-red ?next-row ?col))
                       (not (is-blue ?next-row ?col))
                       (not (is-yellow ?next-row ?col)))
    :effect (is-green ?next-row ?col)
  )
  
  (:action move-blue-down
    :parameters (?row ?col ?next-row)
    :precondition (and (is-blue ?row ?col)
    			(next-row ?row ?next-row)
                       (not (is-green ?next-row ?col))
                       (not (is-red ?next-row ?col))
                       (not (is-yellow ?next-row ?col)))
    :effect (is-blue ?next-row ?col)
  )
  
  (:action move-yellow-down
    :parameters (?row ?col ?next-row)
    :precondition (and (is-yellow ?row ?col)
    			(next-row ?row ?next-row)
                       (not (is-green ?next-row ?col))
                       (not (is-blue ?next-row ?col))
                       (not (is-red ?next-row ?col)))
    :effect (is-yellow ?next-row ?col)
  )  
  
  (:action move-red-up
    :parameters (?row ?col ?prev-row)
    :precondition (and (is-red ?row ?col)
    			(next-row ?prev-row ?row)
                       (not (is-green ?prev-row ?col))
                       (not (is-blue ?prev-row ?col))
                       (not (is-yellow ?prev-row ?col)))
    :effect (is-red ?prev-row ?col)
  )

  (:action move-green-up
    :parameters (?row ?col ?prev-row)
    :precondition (and (is-green ?row ?col)
    			(next-row ?prev-row ?row)
                       (not (is-red ?prev-row ?col))
                       (not (is-blue ?prev-row ?col))
                       (not (is-yellow ?prev-row ?col)))
    :effect (is-green ?prev-row ?col)
  )
  
  (:action move-blue-up
    :parameters (?row ?col ?prev-row)
    :precondition (and (is-blue ?row ?col)
    			(next-row ?prev-row ?row)
                       (not (is-green ?prev-row ?col))
                       (not (is-red ?prev-row ?col))
                       (not (is-yellow ?prev-row ?col)))
    :effect (is-blue ?prev-row ?col)
  )  
  
  (:action move-yellow-up
    :parameters (?row ?col ?prev-row)
    :precondition (and (is-yellow ?row ?col)
    			(next-row ?prev-row ?row)
                       (not (is-green ?prev-row ?col))
                       (not (is-blue ?prev-row ?col))
                       (not (is-red ?prev-row ?col)))
    :effect (is-yellow ?prev-row ?col)
  )
  
  (:action move-red-right
    :parameters (?row ?col ?next-col)
    :precondition (and (is-red ?row ?col)
    			(next-col ?col ?next-col)
                       (not (is-green ?row ?next-col))
                       (not (is-blue ?row ?next-col))
                       (not (is-yellow ?row ?next-col)))
    :effect (is-red ?row ?next-col)
  )    
  
  (:action move-green-right
    :parameters (?row ?col ?next-col)
    :precondition (and (is-green ?row ?col)
    			(next-col ?col ?next-col)
                       (not (is-red ?row ?next-col))
                       (not (is-blue ?row ?next-col))
                       (not (is-yellow ?row ?next-col)))
    :effect (is-green ?row ?next-col)
  )
  
  (:action move-blue-right
    :parameters (?row ?col ?next-col)
    :precondition (and (is-blue ?row ?col)
    			(next-col ?col ?next-col)
                       (not (is-green ?row ?next-col))
                       (not (is-red ?row ?next-col))
                       (not (is-yellow ?row ?next-col)))
    :effect (is-blue ?row ?next-col)
  )  
  
  (:action move-yellow-right
    :parameters (?row ?col ?next-col)
    :precondition (and (is-yellow ?row ?col)
    			(next-col ?col ?next-col)
                       (not (is-green ?row ?next-col))
                       (not (is-blue ?row ?next-col))
                       (not (is-red ?row ?next-col)))
    :effect (is-yellow ?row ?next-col)
  )  

  (:action move-red-left
    :parameters (?row ?col ?prev-col)
    :precondition (and (is-red ?row ?col)
    			(next-col ?prev-col ?col)
                       (not (is-green ?row ?prev-col))
                       (not (is-blue ?row ?prev-col))
                       (not (is-yellow ?row ?prev-col)))
    :effect (is-red ?row ?prev-col)
  )  

  (:action move-green-left
    :parameters (?row ?col ?prev-col)
    :precondition (and (is-green ?row ?col)
    			(next-col ?prev-col ?col)
                       (not (is-red ?row ?prev-col))
                       (not (is-blue ?row ?prev-col))
                       (not (is-yellow ?row ?prev-col)))
    :effect (is-green ?row ?prev-col)
  )
  
    (:action move-blue-left
    :parameters (?row ?col ?prev-col)
    :precondition (and (is-blue ?row ?col)
    			(next-col ?prev-col ?col)
                       (not (is-green ?row ?prev-col))
                       (not (is-red ?row ?prev-col))
                       (not (is-yellow ?row ?prev-col)))
    :effect (is-blue ?row ?prev-col)
  )
  
    (:action move-yellow-left
    :parameters (?row ?col ?prev-col)
    :precondition (and (is-yellow ?row ?col)
    			(next-col ?prev-col ?col)
                       (not (is-green ?row ?prev-col))
                       (not (is-blue ?row ?prev-col))
                       (not (is-red ?row ?prev-col)))
    :effect (is-yellow ?row ?prev-col)
  )
)
