(define (problem bombIt)
  (:domain BombIt)
  (:objects
     row1 row2 row3 row4 row5
     col1 col2 col3 col4 col5
     agent1
     agent2)
  (:init
     (next-row row1 row2)          (next-col col1 col2)
     (next-row row2 row3)          (next-col col2 col3) 
     (next-row row3 row4)          (next-col col3 col4) 
     (next-row row4 row5)          (next-col col4 col5)      
     
     (agent agent1)
     (agent agent2)
     (is-agent agent1 row1 col1)            (is-agent agent2 row2 col1)
  )   
  (:goal
    ( and 
    	(is-agent agent1 row2 col5)
    	(is-agent agent2 row5 col5)    
    )
  )
)
