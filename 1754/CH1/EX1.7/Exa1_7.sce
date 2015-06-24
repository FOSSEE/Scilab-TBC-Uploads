//Exa 1.7
clc;
clear;
close;
//Given data
Vin=18;//in volt
IZ=20;//in mA
ILav=(5+35)/2;//in mA
VZ=12;//in volt
Vo=12;//in volt
I=IZ+ILav;//in mA
R=(Vin-Vo)/(I*10^-3);//in Ohm
disp(R,"Current limiting resistance in Ohm : ");
P=(I*10^-3)^2*R;//in Watts
disp(P,"Power disspation in resistance in Watt : ");