clear;
clc;

// Illustration 2.12
// Page: 131

printf('Illustration 2.12 -  Page: 131\n\n');

// solution
//*****Data*****//
// a-water    b-dry air
D = 25.4*10^-3; // [Internal diameter of tower, m]
Z = 1.5; // [length of the wetted section, m]
Gy = 10; // [mass velocity of air, kg/square m.s]
Tair = 308; // [K]
Twater = 295; // [K]
P = 101.3; // [kPa]
M_a = 18; // [gram/mole]
M_b = 29; // [gram/mole]
R = 8.314; // [cubic m.Pa/mole.K]
//*****//

// The water vapor partial pressure at the interface remains constant at the vapor pressure of liquid water at 295 K, which is pa1 = Pa = 2.64 kPa
// The water vapor partial pressure at the bulk of the gas phase increases from pA2 = pAin = 0 for the dry inlet air to pa2= pAout for the air leaving the tower 
Pa = 2.64; // [kPa]

Gm = Gy/M_b; // [Assuming that gas phase is basically dry air, kmole/square m.s]
// The properties of dry air at 308 K and 1 atm are (from example 2.9)
row = 1.14; // [kg/cubic m]
u = 1.92*10^-5; // [kg/m.s]
D_ab = 0.242*10^-4; // [square m/s]
Sc = 0.692; // [Schmidt number]

Re = Gy*D/u; // [Renoylds number]

if(Re<35000 & Re>2000)
// From equation 2.74
Sh = 0.023*Re^0.83*Sc^0.44; // [Sherwood number]    

printf("Sherwood number is %f\n\n",Sh);
else()
    printf('We cannot use equation 2.74')
end

c = P/(R*Tair); // [kmole/cubic m]
// Now using equation 2.89
Pa_out = Pa*(1-exp((-4*Sh*Z*c*D_ab)/(Gm*D^2))); // [kPa]
printf("The partial pressure of water in the air leaving the tower is %e kPa\n\n",Pa_out);