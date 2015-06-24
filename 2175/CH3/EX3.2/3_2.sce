clc;
x=0.9;
uf=696;
ug=2573;
u1=(1-x)*uf+x*ug;
//similarly
u2=2602.8;

disp("chang of internal energy is:");
disp("kJ/kg",u2-u1);

hf=697;
h_fg=2067;
h1=hf+x*h_fg;
h2=2803;//kJ/kg
disp("change in enthalpy:");
disp("kJ/kg",h2-h1);

Q=547;
W=(u2-u1)-Q;
disp("Work done is:");
disp("kJ/kg",W)
