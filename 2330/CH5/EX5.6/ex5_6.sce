// Example 5.6
format('v',6)
clc;
clear;
close;
// given data
V_BE= 0.7;// in V
R2= 1*10^3;//in Ω
R1= 3.9*10^3;//in Ω
R_E= 100;// in Ω
R_C= 150;// in kΩ
V_CC= 25;// in V
Vz= R2*V_CC/(R1+R2);// in V
V_E= Vz-V_BE;// in V
I_E= V_E/R_E;// in A
I_C= I_E;// in A
// The collector voltage 
V_C= V_CC-I_C*R_C;// in V
disp(V_C,"The collector voltage in volts is : ")
