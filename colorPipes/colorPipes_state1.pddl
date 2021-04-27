(define (problem colorPipes)
  (:domain colorPipes)
  (:objects
     row1 row2 row3 row4 row5
     col1 col2 col3 col4 col5)
  (:init
     (next-row row1 row2)          (next-col col1 col2)
     (next-row row2 row3)          (next-col col2 col3) 
     (next-row row3 row4)          (next-col col3 col4) 
     (next-row row4 row5)          (next-col col4 col5)      
     
     (is-red row5 col2)            (is-green row5 col1)
     (is-blue row2 col1)     	    (is-yellow row3 col3))
  (:goal
    ( and 
    	(is-red row4 col4)
    	(is-green row1 col5)
    	(is-blue row1 col4)
    	(is-yellow row5 col3)    
    )
  )
)
