// Example 8.2
format('v',5)
clc;
clear;
close;
// given data
V_EE= 12;// in V
V_BE= 0.7;// in V
R_E= 5.6*10^3;// in Ω
V_CC= 15;// in V
R_C= 6.8*10^3;// in Ω
// The emitter current,
I_E= (V_EE-V_BE)/R_E;// in A
I_C= I_E;// in A
// The collector to base voltage
V_CB= V_CC-I_C*R_C;// in V
disp(V_CB,"The value of V_CB in volts is : ")

// Note : The answer in the book is not accurate.

