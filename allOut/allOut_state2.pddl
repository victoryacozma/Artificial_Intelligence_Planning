(define (problem allOut)
  (:domain allOut)
  (:objects
     row1 row2 row3 row4 row5
     col1 col2 col3 col4 col5)
  (:init
     (next-row row1 row2)          (next-col col1 col2)
     (next-row row2 row3)          (next-col col2 col3)
     (next-row row3 row4)          (next-col col3 col4)
     (next-row row4 row5)          (next-col col4 col5)
     
     (on-line-up row1 col1)		(on-line-down row5 col1)
     (on-line-up row1 col2)		(on-line-down row5 col2)
     (on-line-up row1 col3)		(on-line-down row5 col3)
     (on-line-up row1 col4)		(on-line-down row5 col4)
     (on-line-up row1 col5)		(on-line-down row5 col5)

     (on-line-right row1 col5)	(on-line-left row1 col1)
     (on-line-right row2 col5)	(on-line-left row2 col1)
     (on-line-right row3 col5)	(on-line-left row4 col1)
     (on-line-right row4 col5)	(on-line-left row4 col1)
     (on-line-right row5 col5)	(on-line-left row5 col1)     
     
     
     (is-light row4 col3)    
     (is-light row4 col4) 
     (is-light row4 col5) 
     (is-light row5 col2) 
     (is-light row5 col4)                
   )
  
     
  (:goal
   (and
    	(not(is-light row1 col1)) (not(is-light row3 col4))
    	(not(is-light row1 col2)) (not(is-light row3 col5))
    	(not(is-light row1 col3)) (not(is-light row4 col1))
    	(not(is-light row1 col4)) (not(is-light row4 col2))
    	(not(is-light row1 col5)) (not(is-light row4 col3))
    	(not(is-light row2 col1)) (not(is-light row4 col4))
    	(not(is-light row2 col2)) (not(is-light row4 col5))
    	(not(is-light row2 col3)) (not(is-light row5 col1))
    	(not(is-light row2 col4)) (not(is-light row5 col2))
    	(not(is-light row2 col5)) (not(is-light row5 col3))
    	(not(is-light row3 col1)) (not(is-light row5 col4))
    	(not(is-light row3 col2)) (not(is-light row5 col5))
    	(not(is-light row3 col3))
    	)))
