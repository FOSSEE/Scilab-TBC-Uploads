clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.11(a)
// Page 65
printf("Example 2.11(a), Page 65 \n\n")

D = 0.05 ; // [m]
To = 450 ; // [degree C]
Tf = 90 ; // [degree C]
T = 150 ; // [degree c]
h = 115 ; // [W/m^2 K]
rho = 8000 ; // [kg/m^3]
Cp = 0.42*1000 ; // [J/kg K]
k = 46 ; // [W/m K]
R = D/2;

// (a)
// From eqn 2.7.3 for a sphere
t1 = rho*Cp*R/(3*h)*log((To-Tf)/(T-Tf)); // [sec]
t1_min = t1/60 ; // [min]
printf("Time taken by the centre of the ball to reach 150 degree C if internal gradients are neglected is %f seconds i.e. %f minutes \n",t1,t1_min);
