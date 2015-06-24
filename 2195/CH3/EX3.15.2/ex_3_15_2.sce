//Example 3.15.2: shunt resistance
clc;
clear;
close;
//given data :
Im=1;// in mA
Rm=100;// in ohm
I=100;// in mA
Rsh=(Im*10^-3*Rm)/((I-Im)*10^-3);
disp(Rsh,"shunt resistance,Rsh(ohm) = ")
