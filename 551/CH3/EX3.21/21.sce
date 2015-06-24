clc
p1=10; //bar
t_sup=400; //0C
p2=0.2; //bar
x2=0.9;
h_sup=3263.9; //kJ/kg
s_sup=7.465;  //kJ/kg
h1=3263.9; //kJ/kg
s1=s_sup;
h_f2=251.5; //kJ/kg
h_fg2=2358.4; //kJ/kg
s_f2=0.8321; //kJ/kg.K
s_g2=7.9094; //kJ/kg.K
s_fg2=s_g2-s_f2;
h2=h_f2+x2*h_fg2;
s2=s_f2+x2*s_fg2;

disp("(i) Drop in enthalpy")
dh=h1-h2;
disp("Drop in enthalpy = ")
disp(dh)
disp("kJ/kg")


disp("(ii) Change in entropy")
ds=s1-s2;
disp("Change in entropy = ")
disp(ds)
disp("kJ/kg.K")