clear ;
clc;
// Example 10.1
printf('Example 10.1\n\n');
printf('Page No. 293\n\n');

// given
m = 1;// mass flow rate of initial air mixture in kg/s
T = 23.5;// Initial temperature in degree celcius
m1 = 0.6;// Percentage of fresh air mixture
T1 = 5;// Dry Bulb Temperature of  fresh air in degree celcius
w1 = 0.005;// Humidity  of fresh air at temperature T1 in kg/kg
m2 = 0.4;// Percentage of recirculated air mixture
T2 = 25;// Dry Bulb Temperature of recirculated air in degree celcius
w2 = 0.015;// Humidity  of recirculated air at temperature T2 in kg/kg

//In air conditioning => m1*w1 + m2*w2 = m*w
w = (m1*w1 + m2*w2)/m;// in kg/kgs
printf('The humidity of the air mixture  is %.3f kg/kg \n',w)

//The specific enthalpy in J/kg can be calculated by the formula => h = (1.005*10^3*T) +(w*((2.50*10^6)+(1.86*10^3*T))); where the T is the temperature and w is the humidity at temperature T
h_f = (1.005*10^3*T1) +(w1*((2.50*10^6)+(1.86*10^3*T1)));// Specific enthalpy of fresh air in J/kg
h_r = (1.005*10^3*T2) +(w2*((2.50*10^6)+(1.86*10^3*T2)));// Specific enthalpy of recirculated  air in J/kg
h_m = (1.005*10^3*T) +(w*((2.50*10^6)+(1.86*10^3*T)));// Specific enthalpy of  final air mixture in J/kg

h_t = (m1*h_f) + (m2*h_r);// Total enthalpy of initial air mixturein J/kg
Q = m*(h_m - h_t);// in Watts
printf('The load on the heater is% .3f W',Q)
// Deviation in answer due to direct substitution and some approximation in answer in book

