clc
p1=15; //bar
t1=350; //0C
C1=60; //m/s
p2=1.2; //bar
C2=180; //m/s
s1=7.102; //kJ/kg
s_f2=1.3609; //kJ/kg
s_g2=7.2884; //kJ/kg
h_f2=439.4; //kJ/kg
h_fg2=2241.1; //kJ/kg
h1=3147.5; //kJ/kg


x2=(s1 - s_f2)/(s_g2-s_f2);
h2=h_f2+x2*h_fg2;

W=(h1-h2) + (C1^2 - C2^2)/2/1000;
disp("Work done = ")
disp(W)
disp("kJ/kg")