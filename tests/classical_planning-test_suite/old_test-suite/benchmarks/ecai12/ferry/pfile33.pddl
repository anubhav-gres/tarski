


(define (problem ferry-l4-c8)
(:domain ferry)
(:objects l0 l1 l2 l3 
          c0 c1 c2 c3 c4 c5 c6 c7 
)
(:init
(location l0)
(location l1)
(location l2)
(location l3)
(car c0)
(car c1)
(car c2)
(car c3)
(car c4)
(car c5)
(car c6)
(car c7)
(not-eq l0 l1)
(not-eq l1 l0)
(not-eq l0 l2)
(not-eq l2 l0)
(not-eq l0 l3)
(not-eq l3 l0)
(not-eq l1 l2)
(not-eq l2 l1)
(not-eq l1 l3)
(not-eq l3 l1)
(not-eq l2 l3)
(not-eq l3 l2)
(empty-ferry)
(at c0 l2)
(at c1 l2)
(at c2 l2)
(at c3 l0)
(at c4 l3)
(at c5 l3)
(at c6 l1)
(at c7 l0)
(at-ferry l1)
)
(:goal
(and
(at c0 l1)
(at c1 l2)
(at c2 l1)
(at c3 l1)
(at c4 l1)
(at c5 l2)
(at c6 l2)
(at c7 l2)
)
)
)


