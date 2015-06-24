clear ;
clc;
// Example 11.3
printf('Example 11.3\n\n');
printf('Page No. 314\n\n');

//given
f = 1;// feed of sodium hydroxide in kg
v = 0.5;// produed vapour in kg
A = 30;// in m^2
T1 = 95;// Temperature of boiling solution in deg C
U = 3*10^3;// heat transfer coefficent in W/m^2-K
m = 1;// feed rate in kg/s
Tf = 70;// Feed temperature in deg C
h_f = 260*10^3;// Enthalpy of feed in J/kg
h_b = 355*10^3;// Enthalpy of boiling solution in J/kg
h_v = 2.67*10^6;// Enthalpy of vapour in J/kg
P1 = 0.6;// Pressure in vapour space in bar

Q = (v*h_b) + (v*h_v) -(f*h_f);// in W
printf('The total energy requirement is %.0f W \n',Q)

// As Q = A*U*dT
dT = Q/(U*A);// in degree celcius
T2 = dT + T1;// in degree celcius
//The temperature of the heating steam T2 corresponds to a pressure of 1.4 bar. Dry saturated steam at 1.4 bar has a total enthalpy of 2.69*10^6 J/kg
//Assuming an isentropic compression of the vapour from 0.6 bar to 1.4 bar, the outlet enthalpy is 2.84*10^6 J/kg

// from steam table
P2 = 1.4// pressure in bar
h_s = 2.69*10^6;// enthalpy of dry saturated steam in J/kg
h_v2 = 2.84*10^6 ;// the outlet enthalpy of vapour in J/kg

W = v*(h_v2 - h_s);// Work in W
T_E = W + 60*10^3;// in W
printf('The total energy consumption is %.0f W',T_E)




