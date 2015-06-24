clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
P1=350;
P2=130;
R=0.287;
T1=450;
G=1.4;
m=1;
T2=T1*((P2/P1)^((G-1)/G));
W=(m*R*(T1-T2))/(G-1);
printf('Amount of External Work done: %3.2f kJ/kg',W);
printf('\n');
U=-W;
printf('Change in Internal Energy: %3.2f kJ/kg',U);
printf('\n');
