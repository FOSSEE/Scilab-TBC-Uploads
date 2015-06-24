clc;

x=0.9;
vg=0.1104;
v=x*vg;
disp("specific volume is:");
disp("m^3/kg",v)

hf=885;
h_fg=1912;
h=hf+x*h_fg;
disp("specific enthalpy is:");
disp("kJ/kg",h);

uf=883;
ug=2598;
u=(1-x)*uf+x*ug;
disp("specific internal energy is:");
disp("kJ/kg",u);
