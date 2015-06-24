clc
p1=8; //bar
p2=1; //bar
T_sup2=115; //0C
T_s2=99.6; //0C
h_f1=720.9; //kJ/kg
h_fg1=2046.5; //kJ/kg
h_f2=417.5; //kJ/kg
h_fg2=2257.9; //kJ/kg
c_ps=2.1;
x1=[h_f2+h_fg2+c_ps*(T_sup2-T_s2)-h_f1]/h_fg1;
disp("Dryness fraction of the steam in the main = ")
disp(x1)