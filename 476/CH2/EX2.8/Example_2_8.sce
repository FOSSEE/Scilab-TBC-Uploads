//A Textbook of Chemical Engineering Thermodynamics
//Chapter 2
//First Law of Thermodynamics
//Example 8


clear;
clc;


//Given:
m = 1650; //mass of steam used in kg/hr
H1 = 3200; //enthalpy at 1368 kPa and 645 K in kJ/kg
H2 = 2690; //enthalpy at 137 kPa and 645 K in kJ/kg

//To determine the theoretical horsepower developed
//Using equation 2.13 (Page no.32)
Q = 0; //since the process is adiabatic
z = 0; //assuming that inlet and discharge of turbine are at same level
u = 0; //feed and discharge velocities being equal
Ws = -(H2-H1);
Wj = Ws*10^3*m/3600; //work done by turbine in J
W = Wj/745.7; //work done by turbine in hp
mprintf('Work done by turbine is %f hp',W);

//end
