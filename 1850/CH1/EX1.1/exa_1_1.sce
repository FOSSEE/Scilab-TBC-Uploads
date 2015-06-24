// Exa 1.1
clc;
clear;
close;
// Given data
format('v',7)
V_CC= 10;// in volt
V_EE= V_CC;
V_BE= 0.715;// in volt
R_c1= 2.7;// in k ohm
R_c1= R_c1*10^3;// in ohm
R_c2= R_c1;// in ohm
R_E=3.9;// in k ohm
R_E= R_E*10^3;// in ohm
Bita_ac= 100;
Bita_dc= Bita_ac;
I_E= (V_EE-V_BE)/(2*R_E);// in amp
I_C= I_E;// in amp
V_C= V_CC-I_C*R_c1;// in volt
V_E= 0-V_BE;// in volt
V_CE= V_C-V_E;// in volt
re_desh= 25*10^-3/I_E;
A_d= R_c1/re_desh;
disp(I_C*10^3,"Operating current in mA");
disp(V_CE,"Operating voltage in volt");
disp(A_d,"Voltage gain")

