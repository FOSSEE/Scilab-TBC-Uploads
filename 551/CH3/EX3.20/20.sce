clc
m=1; //kg
p=6; //bar
x=0.8;
T_s=473; //K
h_fg=2085; //kJ/kg
c_pw=4.18;
s_wet=c_pw*log(T_s/273)+x*h_fg/T_s;
disp("Entropy of wet steam=")
disp(s_wet)
disp("kJ/kg.K")