
clear
 clc
//to find average velocity of car

// GIVEN::

//distance travelling by car 
d1 = 5.2//in mi
//distance travelled while walking
d2 = 1.2//in mi
//time required to reach to gas station while walking
t1 = 27//in min
//speed of car
v = 43//in mi/h

// SOLUTION:

//net displacement
delta_x = d1 + d2//in mi
//speed of car in mi/minutes
v1 = v/60//in mi/minutes
//total elapsed time
delta_t1 = (d1/v1) + t1//in min
//total elapsed time in h
delta_t = delta_t1/60//in h
//average velocity
//applying kinematic equations
Vav_x = delta_x/delta_t//in mi/h
printf ("\n\n Net displacement delta_x =\n\n %.1f mi",delta_x);
printf ("\n\n Total elapsed time delta_t =\n\n %.2f h",delta_t);
printf ("\n\n Average velocity of car required Vav_x =\n\n %.1f mi/h",Vav_x);
