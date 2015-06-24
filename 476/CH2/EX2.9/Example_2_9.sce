//A Textbook of Chemical Engineering Thermodynamics
//Chapter 2
//First Law of Thermodynamics
//Example 9

clear;
clc;


//Given:
m = 25*10^3; //mass flow rate of water in kg/h
P = 2; //power supplied by motor in hp
q = 42000; //heat given in kJ/min
z = 20; //elevation in m
T = 368; //temperature in K
To = 273; //standard temperature in K
Cp = 4.2; //specific heat of water in kJ/kg K

//To find temperature of water delivered to second storage tank
W = (P*745.7*10^-3*3600)/m; //work done per kg of water pumped in kJ/kg
Q = q*60/m; //heat given out per kg of fluid
PE = 09.81*z*10^-3; //change in potential energy in kJ/kg

//Using equation 2.13 (Page no. 32)
H = -Q+W-PE;
//H = H2-H1
H1 = Cp*(T-To);
H2 = H1+H;
//Let T1 be the temperature at second storage tank
T1 = To+(H2/Cp);
mprintf('Temperature of water at second storage tank is %i K',T1);

//end
