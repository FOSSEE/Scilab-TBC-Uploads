clc;clear;
//Example 2.2

//given values
v=8.5;
m=10;
mf=1154;

//calculation
e=v^2/2;
disp(e,'wind energy per unit mass J/kg');
E=m*e;
disp(E,'wind energy for 10kg mass in J');
E=mf*e/1000;
disp(E,'wind energy for mass flow are of 1154kg/s in kW')
