// Exa 6.15
format('v',6)
clc;
clear;
close;
// Given data
R_B= 50*10^3;// in Ω
R_C= 1*10^3;// in Ω
R_E= 5*10^3;// in Ω
V_CC= 10;// in V
V_EE= 10;// in V
V_BE= 0.7;// in V
V_E= -V_BE;// in V
// The value of emitter current
I_E= (V_EE-V_BE)/R_E;// in A
// The collector current will be equal to emitter current
I_C= I_E;// in A
// The collector to emitter voltage
V_CE= V_CC-I_C*R_C;// in V
V_CE= V_CE-V_E;// in V
I_C=I_C*10^3;// in mA
I_E=I_E*10^3;// in mA
disp(I_E,"The value of emitter current in mA is : ")
disp(I_C,"The value of collector current in mA is : ")
disp(V_CE,"The collector to emitter voltage in V is : ")

