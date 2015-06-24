//Example 7.2 : young's modulus of elasticity,yield point stress, ultimate stress and percentage elongation
clc;
clear;
close;
format('v',9)
//given data :
d=40*10^-3;//in m
W=40*10^3;// load in N
del_l=3.04*10^-5;// in m
L=200*10^-3;// in m
load_max=242*10^3;//in N
l=249*10^-3;// length of specimen in m
l0=(d+L); // in m
A=(%pi*d^2)/4;
b=W/A;
epsilon=del_l/L;
E=(b/epsilon);
disp(E,"young modulus,E(N/m^2) = ")
Y_load=161*10^3;
Y_stress=Y_load/A;
disp(Y_stress,"yield point stress,Y_stress(N/m^2) =  ")
U_stress=load_max/A;
disp(U_stress,"ultimate stress,U_stress(N/m^2) = ")
p_elongation=((l-l0)/l0)*100;
disp(p_elongation,"percentage elongation,p_elongation(%) = ")
//percentage elongation is calculated wrong in textbook
