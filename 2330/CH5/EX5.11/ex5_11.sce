// Example 5.11
format('v',5)
clc;
clear;
close;
// given data
V_BE= 0.7;//in V
V_CC= 15;// in V
V_EE= 15;// in V
R_E= 10*10^3;// in Ω
R_C= 5.1*10^3;// in Ω
I_E= (V_EE-V_BE)/R_E;// in A
// The collector current,
I_C= I_E;// in A
V_C= V_CC-I_C*R_C;// in A
V_E= -V_BE;// in V
V_CE= V_C-V_E;// in V
// The collector to emitter voltage,
V_CE= V_CC+V_EE-I_C*(R_C+R_E)
I_C= I_C*10^3;// in mA
disp(I_C,"The value of I_C in mA is : ");
disp(V_CE,"The value of V_CE in volts is : ")
