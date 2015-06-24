//Exa 8.7
clc;
clear;
close;
// Given data
// del_W = T * ds - del_Q
T = 600;// in K
p_i = 7;//kgf/cm^2
p_e = 1.5;//kgf/cm^2
T_o = 298;// in K
R = 29.27/427;
del_W_lost = T * ( R *log(p_i/p_e));// in kcal/kg
disp(del_W_lost,"Lost work in kcal/kg is");
i = T_o * (R * (log(p_i/p_e)));// in kcal/kg
disp(i,"Irreversebility per kg of air flow in kcal/kg is");
