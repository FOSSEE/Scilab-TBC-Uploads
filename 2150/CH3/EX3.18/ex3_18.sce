// Exa 3.18
clc;
clear;
close;
// Given data
V_S = 7.5;// in V
V_Z = 5;// in V
R_S = 4.75;// in ohm
I_Zmin= 0.05;// in A
I_Zmax=1.0;// in A
I_S = (V_S-V_Z)/R_S;// in A
I_Lmax= I_S-I_Zmin;// in A
disp(I_Lmax,"The maximum value of load current in A is : ")
// when
V_S= 10;// in V
I_S = (V_S-V_Z)/R_S;// in A
I_Lmin= I_S-I_Zmax;// in A
disp(I_Lmin,"The minimum value of load current in A is : ")
disp("Thus, the range of load current for regulation is "+string(I_Lmin)+" <= I_L <= "+string(I_Lmax)+" A")
