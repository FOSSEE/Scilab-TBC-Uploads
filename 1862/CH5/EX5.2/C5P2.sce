
clear
 clc
//to find tension in the string (1)when elevator descending with constant velocity and (2)ascending with the acceleration of 3.2 m/s^2

// GIVEN::
//refer to figure 5-2(a) on page no. 91
//mass of block
m = 2.4//in kg
//acceleration due to gravity
g = 9.81//in m/s^2
//acceleration of elevator in y direction while descending
ay1 = 0//in m/s^2  since elevator is moving with constant velocity
//acceleration of elevator in y direction while ascending
ay2 = 3.2//in m/s^2


// SOLUTION:

//when elevator is descending
//considering free body diagram 5-4b from page no.91
//resolving forces first in y direction
//applying newton's second law i.e. SUM(forces) = mass*acceleration
T1 = (m*(g+ay1))//in N

//when elevator is descending
//considering free body diagram 5-4b from page no.91
//resolving forces first in y direction
//applying newton's second law i.e. SUM(forces) = mass*acceleration
T2 = m*(g+ay2)//in N
T1 = round(T1)
printf ("\n\n Tension in the string when elevator descending with constant velocity T1 = \n\n %2i N",T1);
printf ("\n\n Tension in the string when elevator ascending with acceleration of 3.2m/s^2 T2 = \n\n %2i N",T2);
