clc;

p=7;//bar
h=2600;//kJ/kg
hf=697;//kJ/kg
h_fg=2067;//kJ/kg
x=(h-hf)/h_fg;
disp("dryness fraction is:");
disp(x);

vg=0.2728;
v=x*vg;
disp("specific volume is:");
disp("m^3/kg",v);

uf=696;
ug=2573;
u=(1-x)*uf+x*ug;
disp("specific internal energy is:");
disp("kJ/kg",u)
