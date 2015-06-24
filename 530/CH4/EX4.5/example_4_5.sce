clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 4
// Principles of Fluid Flow

// Example 4.5
// Page 195
printf("Example 4.5, Page 195 \n\n");

l = 2 ; // [m]
v = 4 ; // [m/s]

// From Table A.2

mew = 18.1*10^-6; // [N s/m^2]
rho = 1.205*1.5; // [kg/m^3]

Re_l = rho*v*l/mew;
// Boundary layer is partly laminar and partly turbulent, we shall use eqn 4.10.4
Cf = 0.074*(7.989*10^5)^(-0.2) - 1050/Re_l ;
printf("Drag coefficieent is %f \n",Cf)

D_f= Cf*1/2*rho*l*v^2;
printf("Drag force per meter width = %f N \n",D_f);

//from eqn 4.10.1

x = 3*10^5 * (18.1*10^-6)/(1.808*4);
printf("Value of x_c is %f m",x);