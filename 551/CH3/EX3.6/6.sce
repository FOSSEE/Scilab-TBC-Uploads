clc
v=0.15; //m^3
p=4; //bar
x=0.8;
// At 4 bar: From steam tables
v_g=0.462; //m^3/kg
h_f= 604.7; //kJ/kg
h_fg=2133; //kJ/kg
density=1/x/v_g;
disp("mass of 0.15 m^3 steam, m=")
m=v*density;
disp(m)
disp("kg")

disp("Total heat of 1 m3 of steam which has a mass of 2.7056 kg, Q=")
Q=density*(h_f+x*h_fg);
disp(Q)
disp("kJ")