clear ;
clc;
// Example 29.2
printf('Example 29.2\n\n');
//page no. 897
// Solution fig. E29.2

// Given 
DBT1 = 38 ;// Initial dry bulb temperature - [degree C]
DBT2 = 86 ;// Final dry bulb temperature - [degree C]
RH1 = 49 ;// Relative humidity - [%]

//A is initial and B is final  point , see fig. E29.2 . Dew point is obtained graphically and it is 24.8 degree C,therefore

printf('The Dew point is unchanged in the process because humidity is unchanged, and it is located at 24.8 degree C.\n');

// Additional data is obtained from humidity chart , according to book data is as follows
A_Hsat = 90.0 ;// Enthalpy of saturation at point A- [kJ/kg]
A_dH = -0.5 ;//Enthalpy deviation-[kJ/kg]
A_Hact = A_Hsat + A_dH ;// Actual enthalpy at point A -[kJ/kg]
B_Hsat = 143.3 ;// Enthalpy of saturation at point B- [kJ/kg]
B_dH = -3.3 ;//Enthalpy deviation -[kJ/kg]
B_Hact = B_Hsat + B_dH ;// Actual enthalpy at point B -[kJ/kg]

// Energy balance reduces to Q = del_H 
del_H = B_Hact - A_Hact ;// Total change in enthalpy - [kJ/kg]
v = 0.91 ;// Specific volume of moist air at point A -[cubic metre / kg]
Q = del_H/v ;// Heat added per cubic metre of inital moist air -[kJ]
printf('\n Heat added per cubic metre of inital moist air is %.1f kJ.\n',Q);