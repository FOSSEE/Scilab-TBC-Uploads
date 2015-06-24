clc;clear;
//Example 7.21

//given data
T=100+273;//in K
Q=-600;
Tb=25+273;//in K

//calculation
dSsys=Q/T;
disp(dSsys,'entropy change of water in kJ/K');
// Sin - sout + Sgen = dSsystem
Sgen= -Q/Tb + dSsys;
disp(Sgen,'total entropy generation in kJ/K')
