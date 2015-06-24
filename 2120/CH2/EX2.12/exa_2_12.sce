// Exa 2.12
clc;
clear;
close;
// Given data
AvogadroNo= 6.023*10^23;
n= 5/AvogadroNo;// number of moles
v=10^-6;// in m^3
T= -270+273;// in K
R= 0.287;
p= n*R*T/v;// in kPa
p= p*10^18;// in aPa
disp("The pressure in the space is "+string(p)+" aPa");
