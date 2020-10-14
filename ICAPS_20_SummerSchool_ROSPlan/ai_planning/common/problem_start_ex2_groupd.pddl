(define (problem plan_execution_workshop_problem)
(:domain plan_execution_workshop_domain)

(:objects
    tiago - robot
    wp1 wp2 wp3 wp4 wp5 wp6 init - wp
    green_box blue_box red_box - box
)


(:init 
    (robot_at_wp tiago init)
    (robot_does_not_have_box tiago)
    (= (manipulate_box_cost) 5)
    (= (distance wp1 wp2) 6)
    (= (distance wp1 wp6) 4)
    (= (distance wp1 wp2) 3)
    (= (distance wp2 wp3) 9)
    (= (distance wp2 wp4) 8)
    (= (distance wp1 wp3) 6)
)

(:goal 
(and 
    (wp_visited wp1)
    (wp_visited wp2)
    (wp_visited wp4)
    (wp_visited wp6)
)
)

(:metric minimize total-time))


