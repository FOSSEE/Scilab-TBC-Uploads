clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 4
// Principles of Fluid Flow

// Example 4.3
// Page 181
printf("Example 4.3, Page 181 \n\n")
P = 80 * 10^3 ; // [Pa]
L = 10 ; // [m]
V_bar = 1.9 ; // [m/s]
l = 0.25 ; // [m]
b = 0.15 ; // [m]

// Fully developed flow

// From Table A.2, for air at ! atm pressure and 25 degree C
rho = 1.185 ; // [kg/m^3]
mew = 18.35 * 10^-6 ; // [kg/m s]

// At 80 kPa and 25 degree C
rho1 = rho*(80/101.3) ; // [kg/m^3]

// For given duct r=(b/a)
r = b/l;

D_e = (4*l/2*b/2)/(l/2 + b/2); // [m]

// From eqn 4.6.7

D_l = [2/3 + 11/24*0.6*(2-0.6)]*D_e ; // [m]

// Reynolds no based on D_l

Re = rho1*D_l*V_bar/mew;
printf("Reynolds no = %f \n",Re);

f = 0.079*(Re^-0.25) ;
printf("f = %f \n",f);

// From eqn 4.4.17

delta_P = 4*f*(L/D_l)*(rho1*(V_bar^2)/2);
printf("Pressure drop = %f Pa \n",delta_P);

power = delta_P*(V_bar*l*b)
printf("Power required = %f W",power);