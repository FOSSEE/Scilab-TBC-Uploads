//A Textbook of Chemical Engineering Thermodynamics
//Chapter 2
//First Law of Thermodynamics
//Example 2


clear;
clc;


//Given
T = 298; //temperature in K
P = 101; //pressure in kPa
n_iron = 2; //moles of iron reacted
Q = -831.08; //heat liberated in kJ
R = 8.314; //ideal gas constant

//To find heat liberated work done and change in internal energy
mprintf('Heat liberated during the reaction is %f kJ',Q);
n_oxygen = 1.5; //moles of oxygen reacted

//Using ideal gas equation P(Vf-Vi)=nRT and W=P(Vf-Vi)
W = -1.5*R*T; //work done by system in J

//Using equation 2.4 (Page no. 26)
U = (Q*10^3)-W; //change in internal energy in J
mprintf('\nWork done by gas is %f J',W);
mprintf('\nChange in internal energy is %6.3e J',U);

//end