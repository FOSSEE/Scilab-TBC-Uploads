clc;

p=150;//bar
h=3309;//kJ/kg

//from tables
hg=2611;//kJ/kg
//hence the steam is superheated.

//from table
t=500;//C
v=0.02078;//m^3/kg
disp("temperature is:");
disp("C",t);
disp("specific volume is:");
disp("m^3/kg",v);

u=h-(p*10^5)*(v/1000);
disp("specific internal energy is:")
disp("kJ/kg",u)
