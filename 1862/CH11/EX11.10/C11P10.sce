
clear
 clc
//to find conatance force to be applied

// GIVEN:
//refer to figure 11-21 from page no. 244
//initial angular velocity of spacecraft
wi = 2.4//in rev/s
//radius of spacecraft
R = 1.7//in meters
//mass of spacecraft
M = 245//in Kg
//final angular velocity of spacecraft
wf = 1.7//in rev/s
//rotation of spacecraft
theta = 3//in revolutions


// SOLUTION:

//moment of inertia of spacecraft
I = (2/3*M*R^2)//in Kg.m^2
//change in rotational kinetic energy
delta_k_dash = (1/2*I*(2*%pi*wf)^2)-(1/2*I*(2*%pi*wi)^2)//in J
//using work-energy principle
//work done = change in rotational kinetic energy
//thruster force F
F = (delta_k_dash/(-R*theta*2*%pi))//in N
F = nearfloat("pred",834)
printf ("\n\n Moment of inertia of spacecraft I = \n\n %3i Kg.m^2",I);
printf ("\n\n Change in rotational kinetic energy delta_k-dash = \n\n %.2e J",delta_k_dash);
printf ("\n\n Thruster force F = \n\n %3i N",F);
