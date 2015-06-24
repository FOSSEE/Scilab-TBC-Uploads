//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 16


clear;
clc;


//Given:
T1 = 295; //temperature inside building (K)
T2 = 275; //temperature of outside air (K)
eff = 0.25; //overall efficiency of unit
Hc = 890.9; //heat of combustion of fuel (kJ/mol)
conv = 0.33; //efficiency of conversion of heat of combustion to electricity
Q1 = 10^6; //amount of heat to be delivered

//To determine the amount of fuel burned
COP = T1/(T1-T2);
W = Q1/COP; //work required to deliver Q1 kJ of heat
W_act = W/eff; //actual amount of electrical energy to be supplied
W_heat = W_act/conv; //heat energy required as heat of combustion
n = W_heat/Hc; //number of moles of fuel burned
mprintf('The amount of fuel burned is %f kmol',n/1000);

//end