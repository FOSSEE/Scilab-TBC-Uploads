// Example 8.1
format('v',6)
clc;
clear;
close;
// given data
V_EE= 10;// in V
V_BE= 0.7;// in V
R_E= 20*10^3;// in Ω
V_CC= 25;// in V
R_C= 10*10^3;// in Ω
// The emitter current
I_E= (V_EE-V_BE)/R_E;// in A
I_C= I_E;// in A
// The collector to base voltage,
V_CB= V_CC-I_C*R_C;// in V
disp(V_CB,"The value of V_CB in volts is : ")
