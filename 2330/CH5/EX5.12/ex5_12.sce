// Example 5.12
format('v',5)
clc;
clear;
close;
// given data
V_BE= 0.7;//in V
V_CC= 30;// in V
Vz= 6;// in V
R_E= 3*10^3;// in Ω
R_C= 4*10^3;// in Ω
I_E= (Vz-V_BE)/R_E;// in A
I_C= I_E;// in A
// For first stage the collector voltage to ground 
V_C= V_CC-I_C*R_C;// in v
disp(V_C,"For first stage the collector voltage to ground in volts is : ")
Vz= 10;// in V
R_E= 2*10^3;//in Ω
R_C= 3*10^3;// in Ω
I_E= (Vz-V_BE)/R_E;// in A
I_C= I_E;// in A
// For second stage the collector voltage to ground 
V_C= I_C*R_C;// in v
disp(V_C,"For second stage the collector voltage to ground in volts is : ")
