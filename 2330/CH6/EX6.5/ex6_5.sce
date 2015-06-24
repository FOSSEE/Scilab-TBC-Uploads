// Example 6.5
format('v',5)
clc;
clear;
close;
// given data
R1= 10*10^3;// in Ω
R2= 2.2*10^3;// in Ω
R_C= 3.6*10^3;// in Ω
V_CC= 10;// in V
I_C= 1.1*10^-3;// in A
// The base voltage 
V_B= R2*V_CC/(R1+R2);// in V
// The collector voltage 
V_C= V_CC-I_C*R_C;// in V
disp(V_B,"The base voltage in V is : ")
disp(V_C,"The collector voltage in V is : ")
