clear ;
clc;
// Example 24.6
printf('Example 24.6\n\n');
//page no. 736
// Solution Fig. E24.6

// Pick the system as shown in above figure of book
// Given
h1 = -15 ;// Initial level of water from ground level -[ft]
h2 = 165 ;//Final level of water from ground level -[ft]
V_rate = 200 ;// Volume flow rate of water - [gal/hr]
Q1 = 30000 ;// Heat input by heater - [Btu/hr]
Q2 = 25000 ;// Heat lost by system -[Btu/hr]
T1 = 35 ;// Initial temperature of water - [degree F]
g = 32.2 ;// Acceleration due to gravity - [ft/ square second]
p_pump = 2 ;// Power of pump -[hp]
f_w = 55/100 ;// Fraction of rated horsepower that i used in pumping water 
Cp = 1 ;// Specific heat capacity of water - [Btu/lb*F]

// Use following conditions to simplify the energy balance
// 1. Proces is in steady state , so change in energy = 0
// 2. m1 = m2 = m
// 3. change in KE = 0 , because we will assume that v1 = v2 = 0
// The energy balance reduce to Q + W = del_(H*m + PE*m) 

m = V_rate * 8.33 ;// Total mass of water pumped -[lb]
del_PE = (m* g *(h2 - h1))/(32.2*778) ;// Change in PE - [Btu/hr]
Q = Q1 - Q2 ;// Net heat exchange -[Btu/hr]
W = 2* f_w * 60 * 33000/778 ;// Work on system - [Btu/hr]
del_H = Q + W - del_PE ;// By using reduced energy balance - [Btu/hr]
// Also del_H = m* Cp * (T2 - T1), all is known except T2 , solve for T2
deff('[y] = f(T2)','y = m*Cp*(T2-T1) - del_H');
T2 = fsolve(40,f) ;// Boiling point temperature 
funcprot(0);

  printf(' Final temperature of water that enters storage tank is %.1f degree F .\n',T2);