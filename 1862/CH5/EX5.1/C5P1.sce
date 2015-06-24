
clear
 clc
//to find tension in three strings, TA,TB and TC in strings A,B and C respectively.

// GIVEN::
//refer to figure 5-4(a) on page no. 91
//mass of block
m = 15//in kg
//acceleration due to gravity
g = 9.81//in m/s^2

// SOLUTION:

//considering free body diagram 5-4(b) let TA,TB,TC are tensions in string A,B and C respectively.
//applying newton's second law to the knot i.e. SUM(forces) = mass*acceleration
//resolving forces first in y direction refer fig. 5-4(d)
//resolving forces first in x and y direction refer fig. 5-4(c)
//solving equations by generating matrix

A = [-cosd(30) cosd(45) 0 ; sind(30) sind(45) -1 ; 0 0 1]
B = [0;0;(m*g)]


C = A\B
//tension in sting A
TA = C(1);//in N
//tension in sting B
TB = C(2);//in N
//tension in sting C
TC = C(3);//in N
TA = round(C(1))
TB = round(C(2))
TC = round(C(3))

printf ("\n\n Tension in string A is TA = \n\n %3i N",TA);
printf ("\n\n Tension in string B is TB = \n\n %3i N",TB);
printf ("\n\n Tension in string C is TC = \n\n %3i N",TC);
