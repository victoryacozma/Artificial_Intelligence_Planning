(define (problem cocktails1)

(:domain cocktails)

(:objects w1 w2 w3 r1 r2 r3)

(:init
	(is-water w1)
	(is-water w2)
	(is-water w3)
	
	(is-rom r1)
	(is-rom r2)
	(is-rom r3)
	
	(is-poisoned w1)
	(unknown (is-poisoned w2))
	(unknown (is-poisoned w3))
	(or (is-poisoned w2) (is-poisoned w3))
)	
(:goal
      (and
	(not (is-rom r1))
	(not (is-rom r2))
	(not (is-rom r3))
	(not (is-water w1))
	(not (is-water w2))
	(not (is-water w3)))
)
)


