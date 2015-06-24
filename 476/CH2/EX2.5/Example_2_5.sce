//A Textbook of Chemical Engineering Thermodynamics
//Chapter 2
//First Law of Thermodynamics
//Example 5


clear;
clc;


//Given:
n_water = 10^3; //moles of water
T = 373; //tempearture(K)
P = 101.3; //pressure(kPa)
sv_liquid = 0.00104; //specific volume of liquid(m^3/kmol)
sv_vapour = 1.675; //specific volume of vapour(m^3/kmol)
Q = 1.03*10^3; //heat added in kJ
 
//To find change in internal energy and enthalpy
W = P*n_water*(sv_vapour-sv_liquid)*10^-3; //expansion work done in kJ
U = Q-W; //change in internal energy in kJ

//For constant pressure process
H = Q; //enthalpy change in kJ
mprintf('Change in internal energy is %f kJ',U);
mprintf('\nChange in enthalpy is %3.2e kJ',H);

//end