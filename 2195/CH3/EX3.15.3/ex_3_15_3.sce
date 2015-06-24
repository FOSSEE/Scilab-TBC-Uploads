//Example 3.15.3: shunt resistance
clc;
clear;
close;
//given data :
Im=1;// in mA
P=100;// in kilo-watt
I=100;// in mA
Rm=(P)/(Im)^2;
Rsh=((Im*10^-3*Rm*10^3)/((I-Im)*10^-3))*10^-3;
disp(Rsh,"shunt resistance,Rsh(kilo-ohm) = ")
