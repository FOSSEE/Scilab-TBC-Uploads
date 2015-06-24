// Example 2.4
format('v',6)
clc;
clear;
close;
// given data
Vin= 15;// in V
V_P= Vin;// in V
R_L= 10;// in kΩ
R_L= R_L*10^3;// in Ω
Vout=0;
// The peak current through the diode 
I_P= V_P/R_L;// in A
// The maximum reverse voltage 
V_R= Vin-Vout;// in V
I_P= I_P*10^3;// in mA
disp(I_P,"The peak current through the diode in mA is : ");
disp(V_R,"The maximum reverse voltage in volts is : ")
