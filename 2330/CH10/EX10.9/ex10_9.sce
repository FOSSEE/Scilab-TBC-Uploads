// Example 10.9
format('v',5)
clc;
clear;
close;
// given data
I_Csat= 109*10^-3;// in A
bita_dc= 200;
R_B= 1*10^3;// in Ω
V_BE1= 0.7;// in V
V_BE2= 1.6;// in V
// The base current,
I_Bsat= I_Csat/bita_dc;// in A
// The input voltage
Vin= I_Bsat*R_B+V_BE1+V_BE2;// in V
disp(Vin,"The input voltage in volts is : ")
