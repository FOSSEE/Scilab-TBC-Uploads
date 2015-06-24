clc
vg=0.1274; //m^3/kg
vf=0.001157; //m^3/kg
// dp/dT=32; //kPa/K
T3=473; //K

h_fg=32*10^3*T3*(vg-vf)/10^3;
disp("h_fg=")
disp(h_fg)
disp("kJ/kg")