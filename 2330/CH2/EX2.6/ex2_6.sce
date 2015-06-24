// Example 2.6
format('v',6)
clc;
clear;
close;
// given data
Vin= 15;// in V
V_K= 0.7;// in V
Vout=0;// in V
R_L= 10;// in kΩ
R_L= R_L*10^3;// in Ω
// The peak output voltage 
V_P= Vin-V_K;// in V
// The maximum forward current 
I_P= V_P/R_L;// in A
// The peak inverse voltage 
PIV= Vin-Vout;// in V
I_P= I_P*10^3;// in mA
disp(V_P,"The peak output voltage in volts is : ");
disp(I_P,"The maximum forward current in mA is : ");
disp(PIV,"The peak inverse voltage in volts is : ")
