// Exa 9.2
clc;
clear;
close;
// Given data
I_Don = 6;// in mA
I_Don= I_Don*10^-3;// in A
V_GSon = 8;// in V
V_GSth = 3;// in V
V_DD = 12;// in V
R_D= 2*10^3;// in Ω
k= I_Don/(V_GSon-V_GSth)^2;// in A/V^2
// I_D= k*[V_GS-V_GSth]^2 but V_GS= V_DD-I_D*R_D, So
// I_D= k*(V_DD-I_D*R_D-V_GSth)^2 or
// I_D^2*R_D^2+I_D*(2*R_D*V_GSth-2*R_D*V_DD-1/k)+(V_DD-V_GSth)^2
A= R_D^2;// assumed
B= 2*R_D*V_GSth-2*R_D*V_DD-1/k;// assumed
C= (V_DD-V_GSth)^2;// assumed
root= [A B C]
root= roots(root);// in A
I_DQ= root(2);// in A
disp(I_DQ*10^3,"The value of I_DQ in mA is : ")
V_DSQ= V_DD-I_DQ*R_D;// in V
disp(V_DSQ,"The value of V_DSQ in volts is : ")
