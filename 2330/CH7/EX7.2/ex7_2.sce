// Example 7.2
format('v',5)
clc;
clear;
close;
// given data
Vin= 100;// in mV
Vin= Vin*10^-3;// in V
R_E= 430;// in Ω
R_L= 1*10^3;// in Ω
r_e= 2.5;// in Ω
// The ac load resistance,
r_L= R_E*R_L/(R_E+R_L);// in Ω
A= r_L/(r_L+r_e);// unit less
// The output voltage 
Vout= A*Vin;// in V
Vout= Vout*10^3;// in mV
disp(Vout,"The output voltage in mV is : ")
