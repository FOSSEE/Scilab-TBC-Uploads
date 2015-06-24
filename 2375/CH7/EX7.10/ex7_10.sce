// Exa 7.10
clc;
clear;
close;
format('v',5)
// Given data
I_DSS = 5.6;// in mA
I_DSS = I_DSS * 10^-3;// in A
V_P = 4;// in V
Vi = 0;// in V
V_CC = 12;// in V
R_D = 10;// in  k ohm
R_D = R_D * 10^3;// in ohm
R_S= 10*10^3;// in ohm
I_D= poly(0,'I_D');
V_GS= I_D*R_D-V_CC;// in V
I_D= I_D-I_DSS*(1-V_GS/V_P)^2;// in A
I_D= roots(I_D);// in A
I_D= I_D(2);// in A
V_GS= I_D*R_D-V_CC;// in V
Vo= V_CC-I_D*R_S;// in V
I_D= I_D*10^3;// in mA
disp(I_D,"The value of I_D in mA is : ")
disp(Vo,"The value of Vo in volts is : ")

// Note: In the book, there is calculation error to find the value of I_D this is why the value of Vo is also wrong.
