
clear
 clc
//to find forces that is scale reading


// GIVEN::

//refer to figure 9-22(a) from page no. 189
//mass od beam
m = 1.8//in kg
//massof block
M = 2.7//in kg
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:

//refer to figure 9-22(b) from page no. 189
//consider our system as beam and block together
//equating net torque to zero
//force Fr
Fr = (g/4)*(M+2*m)//in N
//equating forces iny direction as 0 for equillibrium condition
//force F1
F1 = (M+m)*g - Fr//in N
F1 = round(F1)

printf ("\n\n Force Fr = \n\n %2i N",Fr);
printf ("\n\n Force F1 = \n\n %2i N",F1);
