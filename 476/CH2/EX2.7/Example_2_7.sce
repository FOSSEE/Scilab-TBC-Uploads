//A Textbook of Chemical Engineering Thermodynamics
//Chapter 2
//First Law of Thermodynamics
//Example 7


clear;
clc;


//Given:
I = 0.5; //current in Amperes
V = 12; //voltage in volts
t = 5*60; //time in sec
m = 0.798; //mass of water vaporised in g
M = 18; //molecular mass of water in g

//To calculate molar internal energy change and molar enthalpy change
Q = (I*V*t/1000); //electric energy supplied in kJ
//Referring equation 2.10 (Page no. 29)
H = (Q*M)/m; //molar enthalpy change in kJ/mole

//BY ideal gas equation PV=RT
//Referring equation 2.9 for constant pressure process (Page no. 29)
U = H-(8.314*10^-3*373); //molar internal energy change in kJ/mole
mprintf('Molar Enthalpy change during the process is %i kJ/mole',H);
mprintf('\nMolar Interanl Energy change during the process is %f kJ/mole',U);

//end