clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 4
// Principles of Fluid Flow

// Example 4.2(a)
// Page 180
printf("Example 4.2(a), Page 180 \n\n")

L = 3 ; //[m]
D = 0.01 ; //[m]
V = 0.2 ; //[m/s]

// (a)
printf("(a) If the temperature of water is increased to 80 degree C \n");


// Properties of water at 80 degree C
rho = 971.8 ; // [kg/m^3]
v = 0.365 * 10^-6 ; // [m^2/s]

Re_D = D*V/v;

// flow is turbilent, so from eqn 4.6.4a

f=0.079*(Re_D)^(-0.25);
delta_p = (4*f*L*rho*V^2)/(D*2); // [Pa]
printf("Pressure drop is %f Pa \n",delta_p);

// from eqn 4.4.16

// x = (T_w/p)^0.5 = ((f/2)^0.5)*V ;
x = ((f/2)^0.5)*V ;
y_plus = 0.005*x/(0.365*10^-6);

// from eqn 4.6.1c & 4.6.2

V_max = x*(2.5* log(y_plus) + 5.5) ; // [m/s]
ratio = V_max/V;
printf("V_max = %f m/s \n",V_max);
printf("V_max/V_bar = %f \n\n",ratio);
