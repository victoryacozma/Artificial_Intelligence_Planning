(define (domain cocktails)
   (:predicates (is-water ?w)
                (is-rom ?r)
                (is-poisoned ?p)
   )

   (:action add-water
       :parameters  (?water)
       :precondition (and (is-water ?water)
       	           (not (is-poisoned ?water)))
       :effect ( and (not (is-water ?water)))
   )

   (:action add-antidote-to-water
       :parameters  (?water)
       :precondition (is-water ?water)   
       :effect (when (is-poisoned ?water) (not (is-poisoned ?water)))
   )
       
   (:action add-rom
       :parameters  (?rom)
       :precondition (is-rom ?rom)   
       :effect (not (is-rom ?rom)))     
)

