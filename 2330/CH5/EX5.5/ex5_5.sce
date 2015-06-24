// Example 5.5
format('v',5)
clc;
clear;
close;
// given data
Vz= 10;// in V
V_BE= 0.7;// in V
V_CC= 30;// in V
R_E= 5;// in kΩ
R_E= R_E*10^3;//in Ω
R_C= 4;// in kΩ
R_C= R_C*10^3;//in Ω
V_E= Vz-V_BE;// in V
I_E= V_E/R_E;// in A
I_C= I_E;// in A
// The collector voltage
V_C= V_CC-I_C*R_C;// in V
disp(V_C,"The collector voltage in volts is : ")
