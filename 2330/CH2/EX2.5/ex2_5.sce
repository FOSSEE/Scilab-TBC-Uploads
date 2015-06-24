// Example 2.5
format('v',6)
clc;
clear;
close;
// given data
Vin= 15;// in V
V_K= 0.7;// in V
R_L= 10;// in kΩ
R_L= R_L*10^3;// in Ω
// The output voltage 
Vout= Vin-V_K;// in V
// The current 
I= Vout/R_L;// in A
// The power dissipation of the diode 
P= V_K*I;// in W
I=I*10^3;// in mA
P= round(P*10^3);// in mW
disp(Vout,"The output voltage in volts is : ");
disp(I,"The current in mA is : ");
disp(P,"The power dissipation of the diode in mW is : ")
