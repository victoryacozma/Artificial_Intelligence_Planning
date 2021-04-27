(define (domain BombIt)

  (:predicates
   (agent ?a)
   (is-agent ?a ?r ?c)
   (bomb-it ?r ?c)
   (next-row ?r1 ?r2)
   (next-col ?c1 ?c2)
  )

  (:action move-agent-down
    :parameters (?a ?row ?col ?next-row)
    :precondition (and (is-agent ?a ?row ?col)
    			(agent ?a)
    			(next-row ?row ?next-row)
                       (not (bomb-it ?next-row ?col)))
    :effect (and (is-agent ?a  ?next-row ?col)
    		  (not (is-agent ?a ?row ?col))    
    		  (nondet (bomb-it ?next-row ?col)))
  )

  
  (:action move-agent-up
    :parameters (?a ?row ?col ?prev-row)
    :precondition (and (is-agent ?a ?row ?col)
    			(agent ?a)    
    			(next-row ?prev-row ?row)
                       (not (bomb-it ?prev-row ?col)))
    :effect (and (is-agent ?a ?prev-row ?col)
    		  (not (is-agent ?a ?row ?col))    
    		  (nondet (bomb-it ?prev-row ?col)))
  )
  
  (:action move-agent-right
    :parameters (?a ?row ?col ?next-col)
    :precondition (and (is-agent ?a ?row ?col)
    			(agent ?a)    
    			(next-col ?col ?next-col)
                       (not (bomb-it ?row ?next-col)))
    :effect (and (is-agent ?a ?row ?next-col)
    		  (not (is-agent ?a ?row ?col))    
    		  (nondet (bomb-it ?row ?next-col)))
  )    
 
  (:action move-agent-left
    :parameters (?a ?row ?col ?prev-col)
    :precondition (and (is-agent ?a ?row ?col)
    			(agent ?a)    
    			(next-col ?prev-col ?col)
                       (not (bomb-it ?row ?prev-col)))
    :effect (and (is-agent ?a ?row ?prev-col)
    		  (not (is-agent ?a ?row ?col))	
		  (nondet (bomb-it ?row ?prev-col)))
  )  
)
