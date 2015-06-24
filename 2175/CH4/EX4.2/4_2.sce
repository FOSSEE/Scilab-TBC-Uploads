clc;
v=0.025;//m^3
s=0.02994;//m^3/kg
m=v/s;

h1=2990;//
p1=s/10^3;
v1=80*10^5;
u1=h1-p1*v1;

v2=s;
vg1=0.03944;
x1=v2/vg1;

uf2=1149;
ug2=2597;
u2=(1-x1)*uf2+x1*ug2;

Q=m*(u2-u1);
disp("kJ",-Q,"rejected heat:")
