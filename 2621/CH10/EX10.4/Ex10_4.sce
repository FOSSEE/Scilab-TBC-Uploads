// Example 10.4
clc;
clear;
close;
// Given data
format('v',6);
V_REG= 15;// in V
I_Q= 10*10^-3;// in A
R1= 40;// in Ω
// When potentiometer R2=0 Ω (minimum)
R2= 0;// in Ω
Vout= (1+R2/R1)*V_REG+I_Q*R2;
disp(Vout,"The minimum output voltage in volts is : ");
// When potentiometer R2=200 Ω (maximum)
R2= 200;// in Ω
Vout= (1+R2/R1)*V_REG+I_Q*R2;
disp(Vout,"The minimum output voltage in volts is : ");
