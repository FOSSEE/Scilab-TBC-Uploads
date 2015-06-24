//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 3


clear;
clc;


//Given:
d_l = 13.69*10^3; //density of mercury in liquid state (kg/m^3)
d_s = 14.193*10^3; //density of mercury in solid state (kg/m^3)
T1 = 234.33; //temperature in K
P1 = 1; //initial pressure in bar
P2 = 10; //final pressure in bar
Hf = 9.7876; //heat of fusion of mercury (kJ/kg)

//To determine the melting point of mercury at 10 bar
//Using Clapeyron equation [Eq. 6.25 Page no. 195]
//Assuming del_V/del_H remains constant, log(T2/T1) = (del_V/del_H)*(P2-P1)

del_V = (1/d_l)-(1/d_s);
T2 = T1*(%e^((del_V/Hf)*(P2-P1)));
mprintf('The melting point of mercury at 10 bar is %f K',T2);

//end