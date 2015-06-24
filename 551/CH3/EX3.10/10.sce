clc
V=0.9; //m^3
p1=8; //bar
x1=0.9;
p2=4; //bar
p3=3; //bar
v_g1=0.24; //m^3/kg

disp("(i) The mass of steam blown off :")
m1=V/x1/v_g1;
h_f1=720.9; //kJ/kg
h_fg1=2046.5; //kJ/kg
h_f2=604.7; //kJ/kg
h_fg2=2133; //kJ/kg
v_g2=0.462; //m^3/kg

h1=h_f1+x1*h_fg1; //The enthalpy of steam before blowing off

h2=h1;
x2=(h1-h_f2)/h_fg2;
m2=x1/(x2*v_g2);

disp("Mass of steam blown off =")
m=m1-m2;
disp(m)
disp("kg")

disp("(ii) Dryness fraction of steam in the vessel after cooling")
v_g3=0.606; //m^3/kg
x3=x2*v_g2/v_g3;
disp("dryness fraction =")
disp(x3)


disp("(iii) Heat lost during cooling")
h_f3=561.4; //kJ/kg
h_fg3=2163.2; //kJ/kg
h3=h_f3+x3*h_fg3;
u2=h2-p2*x2*v_g2*10^2; //kJ/kg
u3=h3-p3*x3*v_g3*10^2; //kJ/kg
Q=m*(u3-u2);
disp("Heat lost during cooling=")
disp(-Q)
disp("kJ")