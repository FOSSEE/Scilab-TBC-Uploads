clc
R=287; //J/kg K
V1=40; //m^3
V2=40; //m^3
p1=1*10^5; //Pa
p2=0.4*10^5; //Pa
T1=298; //K
T2=278; //K

m1=p1*V1/R/T1;
m2=p2*V2/R/T2;

//Let mass of air removed be m
m=m1-m2;
disp("Mass of air removed =")
disp(m)
disp("kg")

V=m*R*T1/p1;
disp("Volume of gas removed =")
disp(V)
disp("m^3")