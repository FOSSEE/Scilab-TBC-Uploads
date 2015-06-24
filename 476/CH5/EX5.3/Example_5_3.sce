//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 3


clear;
clc;


//Given:
m = 10; //mass flow rate of steam (kg/s)
H1 = 3062; //enthalpy of entering steam (kJ/kg)
H2 = 2875; //enthalpy of discharged steam (kJ/kg)
Q = -100/m; //heat loss to the surrounding (kJ/kg)
u1 = 0; //entering velocity of steam

//To determine the discharge velocity
//Using total energy balance (Eq. 5.9, Page no. 117)
//Neglecting change in potential energy and putting Ws = 0

H = H2-H1;
u2 = sqrt((Q-H)*1000*2);
mprintf('The discharge velocity is %i m/s',u2);

//end