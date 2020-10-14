(define (problem plan_execution_workshop_problem)
(:domain plan_execution_workshop_domain)

(:objects
    robot1 - robot
    wp1 wp2 wp3 wp4 wp5 wp6 - wp
    green_box blue_box red_box - box
)


(:init 
    (robot_at_wp robot1 wp1)
    (robot_does_not_have_box robot1)
    (box_at_wp green_box wp1)
    (box_at_wp blue_box wp2)
    (box_at_wp red_box wp3)
	
    (= (move_cost) 10)
    (= (manipulate_box_cost) 5)
)

(:goal 
(and
    (box_at_wp green_box wp4)
    (box_at_wp blue_box wp5)
    (box_at_wp red_box wp6)
)
)

(:metric minimize total-time)
)


