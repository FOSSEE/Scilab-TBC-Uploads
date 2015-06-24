// Example 4.8
format('v',5)
clc;
clear;
close;
// given data
V2rms= 12.6;// in V
V_Z= 6.8;// in V
V2peak= V2rms/0.707;// in V
Vin= V2peak;// in V
Vout= V_Z;// in V
R_L= 1.2;// in kΩ
R_L= R_L*10^3;//in Ω
Rs= 1;// in kΩ
Rs= Rs*10^3;// in Ω
Is= (Vin-Vout)/Rs;// in A
I_L= Vout/R_L;// in A
// The zener current 
Iz= Is-I_L;// in A
Iz= Iz*10^3;// in mA
disp(Iz,"The zener current in mA is : ")

// Note: The calculation in the book is not accurate.
