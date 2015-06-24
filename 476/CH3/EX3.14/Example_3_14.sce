//A Textbook of Chemical Engineering Thermodynamics
//Chapter 3
//P-V-T Behaviour and Heat Effects
//Example 14


clear;
clc;


//Given:
To = 298; //standard temperature (K)
T1 = 373; //temperature of reactants (K)
Ho = 283178; //standard heat of combustion(J/mol)

//To calculate theoretical flame temperature
//Basis:
n_CO = 1; //moles of CO
n_O2 = 1; //moles of oxygen supplied
n1_O2 = 0.5; //moles of oxygen reacted
n_CO2 = 1; //moles of carbon di oxide formed
n_N2 = 79/21; //moles of nitrogen

H1 = ((n_O2*34.83)+(n_N2*33.03)+(n_CO*29.23))*(To-T1); //enthalpy of cooling of reactants
//Using equation 3.55 (Page no. 69)
H2 = Ho-H1;
Tf = H2/((n1_O2*34.83)+(n_N2*33.03)+(n_CO2*53.59))+298; //flame temperature
mprintf('Theoretical flame temperature is %f K',Tf);

//end