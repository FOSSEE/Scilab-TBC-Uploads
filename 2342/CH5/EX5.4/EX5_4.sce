// Exa 5.4
format('v',6)
clc;
clear;
close;
// Given data
I_Don = 3*10^-3;
V_GSon = 10;// in V
V_GSth= 5;// in V
R2= 18*10^6;// in Ω
R1= 22*10^6;// in Ω
R_S=820;// in Ω
R_D=3*10^3;// in Ω
V_DD= 40;// in V
V_G= V_DD*R2/(R1+R2);// in V
k= I_Don/(V_GSon-V_GSth)^2;// in A/V^2
// V_G= V_GS+V_RS= V_GS+I_D*R_S or V_GS= V_G-I_D*R_S
// I_D= k*[V_GS-V_GSth]^2 or 
// I_D= k*(V_G-I_D*R_D-V_GSth)^2 or
// I_D^2*R_D^2+I_D*(2*R_D*V_GSth-2*R_D*V_DD-1/k)+(V_DD-V_GSth)^2
A= R_S^2;// assumed
B= 2*R_S*V_GSth-2*R_S*V_G-1/k;// assumed
C= (V_G-V_GSth)^2;// assumed
// Evaluating the value of I_D 
I_D= [A B C]
I_D= roots(I_D);// in A
I_D= I_D(2);// in A
I_DQ= I_D;// in A
I_DQ= I_DQ*10^3;// in mA
disp(I_DQ,"The value of I_DQ in mA is : ")
I_DQ= I_DQ*10^-3;// in A
V_GSQ= V_G-I_D*R_S;// in V
disp(V_GSQ,"The value of V_GSQ in volts is : ")
V_DSQ= V_DD-I_DQ*(R_D+R_S);// in V
disp(V_DSQ,"The value of V_DSQ in volts is : ")


