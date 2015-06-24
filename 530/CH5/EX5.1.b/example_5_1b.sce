clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 5
// Heat Transfer by Forced Convection


// Example 5.1(b)
// Page 209
printf("Example 5.1(b) \n\n")

D = 0.015 ; // [m]
Q = 0.05 ; // [m^3/h]
H = 1000 ; // [W/m^2]
T_b = 40 ; // [degree C]

// From table A.1, properties at 40 degree C
k = 0.634 ; // [W/m K]
v = 0.659*10^-6 ; // [m^2/s]

V_bar = 4*Q/((%pi)*D^2);

Re_D = V_bar*D/v;

// Therefore, Laminar Flow, from eqn 5.2.8

h = 4.364*k/D;

// From the definition of h in eqn 5.2.3, the local wal to bulk mean temperature difference is given by

T_w = H/h + T_b;

printf("(b) Wall Temperature Tw = %f degree C",T_w);