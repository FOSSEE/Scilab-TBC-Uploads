//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 2


clear;
clc;


//Given:
P = 1000; //pressure of saturated steam (kPa)
T = 398; //temperature of escaping steam (K)

//Referring steam tables
H_vap = 2778; //enthalpy of saturated vapour at 1000 kPa (kJ/kg)
H_liq = 763; //enthalpy of saturated liquid at 1000 kPa (kJ/kg)
H_steam = 2726; //enthalpy of superheated steam at 398 K (kJ/kg)

//To determine quality of steam flowing through the pipe
//Assuming potential and kinetic energy changes are neglegible
//Using equation 5.10 (Page no. 117)
//H = Q-Ws

//Let section 1 be a point in pipe and x be the fraction of steam that is liquid
//Then H1 = x*H_liq + (1-x)*H_vap

//Let section 2 be the point in steam issuing from the leak in valve
H2 = 2726; //[kJ/kg]

//No work is done and no heat is exchanged between section 1 and 2
//S0, H1 = H2
x = (H2-H_vap)/(H_liq-H_vap);
mprintf('The steam contains %f percent liquid',x*100);

//end