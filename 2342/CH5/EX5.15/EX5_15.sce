// Exa 5.15
format('v',6)
clc;
clear;
close;
// Given data
k= 0.05;// in mA/V^2
V_T= 1;// in V
V_DD= 6;// in V
R_S= 9.1;//in kΩ
//V_GS= V_DD-I_D*R_S
//I_D= k*(V_DD-I_D*R_S)^2
//I_D^2*R_S^2-I_D*(2*V_DD*R_S+1/k)+V_DD^2
A= R_S^2;// assumed
B=-(2*V_DD*R_S+1/k);// assumed
C= V_DD^2;// assumed
I_D= [A B C];
I_D= roots(I_D);// in mA
I_D= I_D(2);// in mA
V_GS= V_DD-I_D*R_S;// in V
V_DS= V_GS;// in V
disp(I_D,"The value of I_D in mA is : ")
disp(V_GS,"The value of V_GS in volts is : ")
disp(V_DS,"The value of V_DS in volts is : ")
