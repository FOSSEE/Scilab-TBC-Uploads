clc
h_fg0=2441.8; //kJ/kg
m=3*18;
dH0_liq=-3301000; //kJ/mole

dH0_vap=dH0_liq+m*h_fg0;
disp("dH0_vapour =")
disp(dH0_vap)
disp("kJ/mole")