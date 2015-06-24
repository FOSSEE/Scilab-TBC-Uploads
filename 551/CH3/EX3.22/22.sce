clc
m=1; //kg
p=12; //bar
T_sup=523; //K
c_ps=2.1; //kJ/kg.K
T_s=461; //K
h_fg=1984.3; //kJ/kg
c_pw=4.18;
s_sup=c_pw*log(T_s/273)+h_fg/T_s+c_ps*log(T_sup/T_s);
disp("Entropy =")
disp(s_sup)
disp("kJ/kg.K")