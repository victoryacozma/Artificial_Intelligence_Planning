(define (problem Ropes)
(:domain ropes)

(:objects t1 t2 t3 t4 t5 r1 r2 r3)

(:init
	(is-table t1)
	(is-table t2)
	(is-table t3)
	(is-table t4)
	(is-table t5)
	
	(is-rope r1)
	(is-rope r2)
	(is-rope r3)
	
	(empty-table t1)
	(empty-table t5)
	;(on-table r3 t2)
	;(on-table r2 t3)
	;(on-table r1 t4)
	;(unknown (empty-table t2))
	;(unknown (empty-table t3))
	;(unknown (empty-table t4))

	(clear-rope r1)
	;(unknown (clear-rope r2))
	;(unknown (clear-rope r3))
	
	(on r3 r2)
	(on r1 r3))
(:goal
	(and
	(clear-rope r1)
	(clear-rope r2)
	(clear-rope r3))
)
)


