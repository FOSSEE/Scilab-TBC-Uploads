// Exa 6.12
clc;
clear;
close;
// Given data
V_DD= 20;// in V
I_DSS= 9;// in mA
V_BB= -10;// in V
R_S= 1.5;// in kΩ
R_D= 1.8;// in kΩ
V_P= -3;// in V
V_G=0;
// V_S= I_D*R_S+V_BB;
// V_GS= V_G-V_S or
// V_GS= V_G-(I_D*R_S+V_BB)
// I_D= I_DSS*(1-V_GS/V_P)^2 or
// I_D^2*R_S^2 + I_D*[2*R_S*V_BB+2*V_P*R_S-V_P^2/I_DSS]+[V_P^2+V_BB^2+2*V_BB*V_P]
root= [R_S^2 2*R_S*V_BB+2*V_P*R_S-V_P^2/I_DSS V_P^2+V_BB^2+2*V_BB*V_P]
I_D= roots(root);// in mA
I_D= I_D(2);// discarding maximum value as it will be less than I_DSS
I_DQ= I_D;// in mA
disp(I_DQ,"The value of I_DQ in mA is : ")
V_GS= V_G-(I_D*R_S+V_BB);// in V
V_GSQ= V_GS;// in V
disp(V_GSQ,"The value of V_GSQ in volts is : ")
V_DS= V_DD-I_D*(R_D+R_S)-V_BB;// in V
disp(V_DS,"The value of V_DS in volts is : ")
V_S= I_D*R_S+V_BB;// in V
disp(V_S,"The value of V_S in volts is : ");
V_D= V_S+V_DS;// in V
disp(V_D,"The value of V_D in volts is : ")
