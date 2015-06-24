// Exa 3.30
clc;
clear;
close;
// Given data
V_CC=5;// in V
V_T= 0.025;// in V
R_C=7.5*10^3;//in Ω
I_C= 0.5;// in mA
I_C= I_C*10^-3;// in A
I_E=I_C;// (approx) in A
V_C= V_CC-I_C*R_C;// in V
disp(V_C,"dc voltage at the collector in volt is : ")
gm= I_C/V_T;// in A/V
disp(gm*10^3,"The value of gm in mA/V is : ")
// v_be= -v_i
// v_c= -gm*v_be*R_C
vcbyvi= gm*R_C;// in V/V
disp(vcbyvi,"The value of vc/vi in V/V is : ")
