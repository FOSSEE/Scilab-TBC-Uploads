clc;clear;
//Example 10.1

//given data
R=1.2*10^-15;//radius in A^(1/3)-m *A is mass number
mp=1.008;
mn=mp;//mass of proton and neutron in a.m.u
pi=3.14;//const
Dw=1000;///density of water in kg/m^3

//calculation
Vn=4/3*pi*R^3;
mp=mp*1.66*10^-27;//conversion in kg
mn=mp;
m=mn;//m is combined mass in A-kg
Dn=m/Vn;
R=Dn/Dw;
disp(R,'the ratio is')