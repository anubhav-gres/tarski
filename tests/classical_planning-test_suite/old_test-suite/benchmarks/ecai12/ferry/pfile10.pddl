


(define (problem ferry-l2-c10)
(:domain ferry)
(:objects l0 l1 
          c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 
)
(:init
(location l0)
(location l1)
(car c0)
(car c1)
(car c2)
(car c3)
(car c4)
(car c5)
(car c6)
(car c7)
(car c8)
(car c9)
(not-eq l0 l1)
(not-eq l1 l0)
(empty-ferry)
(at c0 l0)
(at c1 l1)
(at c2 l1)
(at c3 l1)
(at c4 l1)
(at c5 l1)
(at c6 l0)
(at c7 l0)
(at c8 l0)
(at c9 l1)
(at-ferry l0)
)
(:goal
(and
(at c0 l0)
(at c1 l1)
(at c2 l1)
(at c3 l0)
(at c4 l0)
(at c5 l0)
(at c6 l1)
(at c7 l0)
(at c8 l1)
(at c9 l0)
)
)
)


