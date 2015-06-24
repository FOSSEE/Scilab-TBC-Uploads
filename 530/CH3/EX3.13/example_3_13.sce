clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.13
// Page 146
printf("Example 3.13, Page 146 \n\n")

D = 0.32 ; // [m]
D_s = 0.36 ; // [m]
e = 0.02 ; // emissivity
l = 201 ; // [kJ/kg]
rho = 800 ; // [kg/m^3]
s = 5.670*10^-8 ;

T2 = 303 ; // [K]
T1 = 77 ; // [K]

// From equation 3.10.1
q1 = s*4*%pi*((D/2)^2)*(T1^4-T2^4)/[1/e+((D/D_s)^2)*(1/e-1)]; // [W]

evap = abs(q1)*3600*24/(l*1000); // [kg/day]
mass = 4/3*%pi*((D/2)^3)*rho;
boiloff = evap/mass*100 ; // percent

T_drop = (abs(q1))/(4*%pi*((D/2)^2))*(1/100); // [C]

printf("Rate at which nitrogen evaporates = %f kg/day \n",evap)
printf("Boil-off rate = %f percent \n",boiloff);
printf("Temperature drop between liquid Nitrogen and inner surface = %f C",T_drop);