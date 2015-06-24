clc;
s1=6.091;//kJ/kg K
s2=s1;
sf=2.138;//kJ/kg K
sfg2=4.448;
x2=(s2-sf)/sfg2;

uf=762;
ug=2584;
u2=(1-x2)*uf+x2*ug;

h1=3017;
p1=100;//bar
v1=0.02453;//m^3
u1=h1-p1*v1*10^5/10^3;

W=u2-u1;
disp("Work done is;")
disp("kJ",-W)
