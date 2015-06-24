// Exa 6.11
clc;
clear;
close;
// Given data
V_DD= 20;// in V
R1= 2.1*10^6;// in Ω
R2= 270*10^3;// in Ω
R_D= 4.7;// in kΩ
R_S= 1.5;// in kΩ
I_DSS= 8;// in mA
V_P= -4;// in V
V_G= V_DD*R2/(R1+R2);// in V
// V_GS= V_G-R_S*I_D    (as Vs= I_D*R_S) and 
// I_D= I_DSS*(1-V_GS/V_P)^2;// in A
// I_D= I_DSS*(1-(V_G-R_S*I_D)/V_P)^2;// in mA  or
// I_D= I_D^2*I_DSS*R_S^2/V_P^2  + I_D*(2*R_S*I_DSS/V_P-2*V_G*R_S*I_DSS/V_P^2-1) + I_DSS*(1+V_G^2/V_P^2-2*V_G/V_P)
a= I_DSS*R_S^2/V_P^2;// assumed
b= 2*R_S*I_DSS/V_P-2*V_G*R_S*I_DSS/V_P^2-1;// assumed
c= I_DSS*(1+V_G^2/V_P^2-2*V_G/V_P);// assumed
root= [a b c];
I_D= roots(root);// in mA
I_D= I_D(2);// discarding maximum value as it will be less than I_DSS
I_DQ= I_D;// in mA
disp(I_DQ,"The value of I_DQ in mA is : ")
V_GSQ= V_G-R_S*I_D;// in V
disp(V_GSQ,"The value of V_GSQ in V is : ")
V_DSQ= V_DD-I_DQ*(R_D+R_S);// in V
disp(V_DSQ,"The value of V_DSQ in V is : ")
V_S= I_D*R_S;// in V
V_D= V_S+V_DSQ;//in V
V_DS= V_D-V_G;// in V
disp(V_S,"The value of V_S in V is : ")
disp(V_D,"The value of V_D in V is : ")
disp(V_DS,"The value of V_DS in V is : ")

