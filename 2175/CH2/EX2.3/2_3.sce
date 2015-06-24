clc;

//at 110 bar, vg=0.01598m^3/kg which is less than the actual specific volume of 0.0196m^3/kg
//hence it is superheated

v=0.0196;//m^3/kg
p=110;//bar
//from tables
h=2889;//kJ/kg
t=350;//C
disp("temperature is:");
disp("C",t);
u=h-(p*10^5)*(v/1000);
disp("enthalpy is:");
disp("kJ/kg",u);
disp("specific internal energy is:");
disp("kJ/kg",u);
