clc
clear
//Input data
v1=1.5;//Initial volume of the process in m^3
v2=4.5;//Final volume of the process in m^3
Q=2000;//Amount of heat added in kJ

//Calculations
W=100*((3.5*log(v2/v1))+(3*(v2-v1)));//Amount of work done in kJ
U=Q-W;//The change in internal energy in kJ

//Output
printf('The change in internal energy is %3.4f kJ ',U)
