clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 4
// Principles of Fluid Flow

// Example 4.4
// Page 189
printf("Example 4.4, Page 189 \n\n")

l = 2 ; // [m]
b = 1 ; // [m]
V = 1 ; // [m/s]

// From table A.2

rho = 1.060 ; // [kg/m^3]
v = 18.97 * 10^-6 ; // [m^2/s]

// At x = 1.5m
x = 1.5 ; // [m]
Re = V*x/v; // Reynolds number

// From eqn 4.8.12

d = 5*x/(Re^(1/2))*1000 ; // [mm]
printf("Thickness of Boundary layer at x = 1.5 is %f mm \n",d)

Re_l = V*l/v;

// From eqn 4.8.19 and 4.8.16

c_f = 1.328*Re_l^-(1/2); // drag coefficient
printf("Drag Coefficient c_f = %f \n",c_f);

F_d = 0.00409*(1/2)*rho*(2*l*b)*1^2;
printf("Drag Force F_D = %f N",F_d);