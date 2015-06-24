clear ;
clc;
// Example 5.9
printf('Example 5.9\n\n');
printf('Page No. 122\n\n');

// given
P1 = 15;// Pressure at state 1 in bar
P2 = 1.5;// Pressure at state 2 in bar
T1 = 198;// in degree celcius

// as the process is adiabatic; => Q = 0; => ehthalpy at state1 = enthalpy at state 2
h_1 = 2789*10^3;// specific enthalpy at state 1 in J/kg
h_2 = h_1;//specific enthalpy at state 2 in J/kg

T3 = 150;// in degree celcius
T4 = 200;// in degree celcius
h_3 = 2773*10^3;// specific enthalpy at state 3 in J/kg
h_4 = 2873*10^3;// specific enthalpy at state 4 in J/kg

// Assuming a liner realtionship between temperature and enthalpy for the temperature range 150-200 degree celcius
h = ((h_4 - h_3)/(T4 - T3));// specific enthalpy per degree celcius in J/kg-degC
t = ((h_2 - h_3)/h);// in degree celcius
T2 = T3 + t;// in degree celcius
printf('the temperature of the final superheated steam at 1.5 bar is %.0f deg C',T2)


