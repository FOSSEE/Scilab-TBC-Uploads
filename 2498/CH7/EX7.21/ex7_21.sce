// Exa 7.21
clc;
clear;
close;
format('v',5)
// Given data
I_DSS= 6;// in mA
V_P= -4;// in V
R_S= 0.43;// in k ohm
R_D= 1.2;// in k ohm
V_DD= 12;// in V
I_D= poly(0,'I_D');
V_GS= -I_D*R_S;// in V
I_D= I_D-I_DSS*(1-V_GS/V_P)^2;
// Evaluating the value of I_D by using polynomial method,
I_D= roots(I_D);// in mA
I_D= I_D(2);//in mA (taking lower value)
V_GSQ= -I_D*R_S// in V
disp(I_D,"The value of I_DQ in mA is : ")
disp(V_GSQ,"The value of V_GSQ in volts is : ")
// part (b) 
// Applying KVL, V_DD-I_D*R_D-V_DS-I_D*R_S=0 or
V_DS= V_DD-I_D*(R_D+R_S);// in V
disp(V_DS,"The value of V_DS in volts is : ")

// Note: In the book, the calculated value of I_D is wrong due to this all the answer in the book is wrong.
