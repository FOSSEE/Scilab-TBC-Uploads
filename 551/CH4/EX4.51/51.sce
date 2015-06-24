clc
V=0.028; //m^3
p1=80; //bar
t=350; //0C
p2=50; //bar
v1=0.02995; //m^3/kg
h1=2987.3; //kJ/kg
v2=0.02995; //m^3/kg
vg2=0.0394; //m^3/kg
uf2=1149; //kJ/kg
ug2=2597; //kJ/kg

m=V/v1;
u1=h1 - (p1*v1*10^2); //kJ/kg


disp("(i) State of steam after cooling")
x2=v2/vg2;
disp("dryness fraction = ")
disp(x2)


disp("(ii) Heat rejected by the steam")
u2=(1-x2)*uf2 + x2*ug2;
Q=m*(u2-u1);
disp("Heat rejected = ")
disp(-Q)
disp("kJ")