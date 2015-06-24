// Exa 3.13
clc;
clear;
close;
// Given data
V_F= 0.2;// in V
T=300;// in K
V_T= T/11600;// in volt
Io= 1;// in micro amp
Io=Io*10^-6;// in amp
Id= Io*(%e^(V_F/V_T)-1)
I_F=Id;
r_dc= V_F/I_F;// in ohm
disp(r_dc,"Dynamic resistance in ohm is : ")
r_ac= .026/I_F;// in ohm
disp(r_ac,"Static resistance in ohm is : ")
