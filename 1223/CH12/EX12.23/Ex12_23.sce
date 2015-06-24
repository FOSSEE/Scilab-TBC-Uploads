clear;
clc;
//Example 12.23
A=10^3;
Cf=30*10^-12;//feedback capacitor (F)
R2=5*10^5;
Cm=Cf*(1+A);
printf('\nMiller capacitance=%e F\n',Cm)
fp=1/(2*%pi*R2*Cm);
printf('\ndominant pole frequency =%.2fHz\n',fp)
