clc;
v1=0.2*10^5;//m^3
p1=1.013;//bar
T1=15+273;//C
w=0.2;//kg
m=28;//kg/k mole
R_=8314.5;//N m/K

R=R_/m;
m1=p1*v1/(R*T1);

m2=0.20+.237;
//T2=T1 &  v2=v1
p2=m2*R*T1/v1
disp("the new pressure is:");
disp("bar",p2)
