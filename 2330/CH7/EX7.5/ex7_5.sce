// Example 7.5
format('v',5)
clc;
clear;
close;
// given data
R_C= 5*10^3;// in Ω
r_e= 25;// in Ω
Vin= 1*10^-3;// in V
R_L= 1*10^3;// in Ω
A= R_C/r_e;
// Thevenin voltage,
V_TH= A*Vin;// in V
// The ac output voltage 
Vout= R_L*V_TH/(R_C+R_L);// in V
Vout= Vout*10^3;// in mV
disp(Vout,"The ac output voltage in mV is : ")
