// Exa 7.19
clc;
clear;
close;
format('v',6)
// Given data
V_CC= 24;// in V
V_SS= -12// in V
R_D= 4.7;// in k ohm
R_S= 10;// in k ohm
V_P= -4;// in V
I_DSS= 5.6;// in mA
// For
Vi= 0;
I_D= poly(0,'I_D') ;
V_GS= Vi-V_SS-I_D*R_S;// in V
I_D= I_D-I_DSS*(1-V_GS/V_P)^2
// Evaluating the value of I_D by using polynomial method,
I_D= roots(I_D);// in mA
I_D= I_D(2);// taking lower value
Vo1= V_SS+I_D*R_S;//in V
disp(Vo1,"For Vi= 0 V, the output voltage in volts is : ")
// For
Vi= 10;// in V
I_D= poly(0,'I_D') ;
V_GS= Vi-V_SS-I_D*R_S;// in V
I_D= I_D-I_DSS*(1-V_GS/V_P)^2
// Evaluating the value of I_D by using polynomial method,
I_D= roots(I_D);// in mA
I_D= I_D(2);// taking lower value
Vo2= V_SS+I_D*R_S;//in V
disp(Vo2,"For Vi= 10 V, the output voltage in volts is : ")
del_Vo= Vo2-Vo1;// in V
disp("This compares well with "+string(del_Vo)+" V of small signal model.")

