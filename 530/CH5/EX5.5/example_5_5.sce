clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 5
// Heat Transfer by Forced Convection


// Example 5.5
// Page 231
printf("Example 5.5, Page 231 \n")

V = 15 ; // [m/s]
s=0.2 ; // [m]
T_m = (20+60)/2; // [degree C]
// Properties at mean temp = 40 degree C
v = 16.96*10^-6; //  [m^2/s]
rho = 1.128 ; // [kg/m^3]
k = 0.0276; // [W/m K]
Pr = 0.699;
A=s^2;
Re_L = V*0.2/v;
// This is less than 3*10^5, hence the boundary layer may be assumed to be laminar over the entire length.
// from eqn 4.8.19

Cf = 1.328/(Re_L)^0.5
Fd = 2*Cf*1/2*rho*A*V^2;

// From eqn 5.5.10
Nu_l = 0.664*(Pr^(1/3))*(Re_L^(1/2));

h = Nu_l*k/s;
// Therefore rate of heat transfer q is
q = 2*A*h*(60-20);// [W]

// With a turbulent boundary layer from leading edge, the drag coefficient is given by eqn 4.10.4
Cf1 = 0.074*(Re_L)^(-0.2);
Fd1 = 2*Cf1*1/2*rho*A*V^2; // [N]

// from eqn 5.8.3 with C1 = 0
Nu_l1 = 0.0366*(0.699^(1/3))*(Re_L^(0.8));

h1 = Nu_l1*k/s; // [W/m^2 K]
q1 = 2*A*h1*(60-20);

printf("For Laminar Boundary Layer \n");
printf("Rate of Heat transfer = %f W\n",q);
printf("Drag force = %f N \n \n",Fd)

printf("For Turbulent Boundary Layer from the leading edge \n");
printf("Rate of Heat transfer = %f W\n",q1);
printf("Drag force = %f N\n",Fd1)
