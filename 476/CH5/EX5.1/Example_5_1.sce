//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 1


clear;
clc;


//Given:
u1 = 1; //entering velocity of water (m/s)
d_ent = 0.2; //entrance diameter of reducer (m)
d_exit = 0.1; //exit diameter of reducer (m)
P_ent = 105; //pressure at entrance (kPa)
z = 5; //distance between entrance and exit (m)
g = 9.81; //acceleration due to gravity 
den = 1000; //density of water (kg/m^3)

//To calculate the pressure at exit
A1 = (%pi/4)*d_ent^2; //cross section area of entrance (m^2)
A2 = (%pi/4)*d_exit^2; //cross section area of exit (m^2)

//By the equation of continuity and since density of water remains constant
u2 = (A1*u1)/A2;

//By Bernoulli's equation between section 1 and 2 (Eq 5.20 Page no. 118)
P_exit = (-((u2^2-u1^2)/2)-(g*z)+(P_ent*10^3/den))*(den/10^3);
mprintf('The pressure at exit is %f kPa',P_exit);

//end 