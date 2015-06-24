clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 8
// Condensation and Boiling


// Example 8.1
// Page 318
printf("Example 8.1, Page 318 \n \n");
Ts = 80 ; // [C]
Tw = 70 ; // [C]
L = 1 ; // [m]
g = 9.8 ; // [m/s^2]

// Assuming condensate film is laminar and Re < 30
Tm = (Ts + Tw)/2 ;
// From table A.1
rho = 978.8 ; // [kg/m^3]
k = 0.672 ; // [W/m K]
u = 381 *10^-6 ; // [kg/m s]
v = u/rho ;
// At 80 C,
lambda = 2309 ; // [kJ/kg]
// Substituting in eqn 8.3.9, we get
h = 0.943*[(lambda*1000*(rho^2)*g*(k^3))/((Ts-Tw)*u*L)]^(1/4); // [W/m^2 K]

rate = h*L*(Ts-Tw)/(lambda*1000); // [kg/m s]
Re = 4*rate/u;
printf("Assuming condensate film is laminar and Re < 30 \n");
printf("h = %f W/m^2 K\n",h);
printf("Re_L = %f \n",Re);
printf("Initial assumption was wrong, Now considering the effect of ripples, we get\n");

// Substituting h = Re*(lambda*1000)*u/(4*L*(Ts-Tw)), in eqn 8.3.12
Re = [[[4*L*(Ts-Tw)*k/(lambda*1000*u)*(g/(v^2))^(1/3)]+5.2]/1.08]^(1/1.22);
// From eqn 8.3.12
h = [Re/(1.08*(Re^1.22)-5.2)]*k*((g/v^2)^(1/3)); // [W/m^2 K]
m = h*L*10/(lambda*1000); // rate of condensation , [kg/m s]

printf("Re = %f \n",Re);
printf("Heat Transfer Cofficient = %f W/m^2 K \n",h);
printf("Rate of condensation = %f kg/m s",m);