// Example 5.3
format('v',4)
clc;
clear;
close;
// given data
V_BE= 0.7;//in V
V_CC= 30;// in V
R_B= 390;// in kΩ
R_B= R_B*10^3;//in Ω
R_C= 1.5*10^3;//in Ω
bita= 80;// unit less
I_B= (V_CC-V_BE)/R_B;//in A
// The collector current,
I_C= bita*I_B;//in A
// The value of V_CE
V_CE= V_CC-I_C*R_C;//in V
I_C= I_C*10^3;// in mA
disp(I_C,"The value of I_C in mA is : ")
disp(V_CE,"The value of V_CE in volts is : ")
