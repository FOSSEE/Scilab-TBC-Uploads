clc;clear;
//Example 1.9

//constants used
g=9.81;//acceleration due to gravity in m/s^2;

//given values
m=60;
Patm=0.97;
A=0.04;

//calculation
P=Patm+(m*g/A)/10^5;//standard  pressure formula
disp(P,'the pressure inside the cylinder in bar is')
