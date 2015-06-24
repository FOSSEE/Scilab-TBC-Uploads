clc
p1=15; //bar
x1=1;
p2=0.4; //bar

//At 15 bar
t_s1=198.3; //0C
h_g1=2789.9; //kJ/kg
s_g1=6.4406; //kJ/kg K

//At 0..4 bar
t_s2=198.3; //0C
h_f2=317.7; //kJ/kg
h_fg2=2319.2; //kJ/kg
s_f2=1.0261; //kJ/kg K
s_fg2=6.6448; //kJ/kg K
T1=471.3; //K
T2=348.9; //K

n_carnot=(T1-T2)/T1;
disp("Carnot efficiency=")
disp(n_carnot)


x2=(s_g1 - s_f2)/s_fg2;
h2=h_f2+x2*h_fg2;

n_rankine=(h_g1-h2)/(h_g1-h_f2);
disp("Rankine efficiency=")
disp(n_rankine)