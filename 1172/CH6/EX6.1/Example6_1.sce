clc
//Given that
c = 3e8 // speed of light in m/s
v = 0.8* c // velocity of rod
l1 = 1 // let 
theta = 60 // anlge between length of rod and speed in degree
//Sample Problem 1 page No. 221
printf("\n # Problem 1 # \n")
l_x = l1 * cos(theta * %pi /180) * sqrt (1-(v /c)^2)
l_y = l1 * sin(theta * %pi /180)
l2 = sqrt (l_x^2 + l_y^2)
per_contrtaction = (l1 - l2) / l1 *100
angle = atan (l_y/l_x)
printf ("Percentage contraction in rod is %f and apparant orientation is %f",per_contrtaction,tan (angle) )
