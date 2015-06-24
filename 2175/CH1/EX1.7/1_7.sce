clc;
c1=6;//m/s
c2=4.5;//m^2
p1=10^5;//bar
p2=6.9*10^5;//bar
v1=0.85;//m^3/kg
v2=0.16;//m^3/kg
u2_u1=88;//kJ/kg
m=0.4;//kg/s
Q=-59;//kW

KI=c1^2/2000;
KO=c2^2/2000;

W=m*{(u2_u1)+(p2*v2-p1*v1)+(KO-KI)}-Q;
disp("powar input required is:");
disp("kW",W/1000);

A1=m*(v1/c1);
disp("inlet pipe cross section area is:");
disp("m^2",A1);

A2=m*(v2/c2);
disp("outlet pipe cross section area is:");
disp("m^2",A2);
