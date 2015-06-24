clc
d=2.5; //m; diameter
V1=4/3*%pi*(d/2)^3; //volume of each sphere
T1=298; //K
T2=298; //K
m1=16; //kg
m2=8; //kg
V=2*V1; //total volume
m=m1+m2;
R=287; //kJ/kg K

p=m*R*T1/V/10^5; //bar
disp("pressure in the spheres when the system attains equilibrium=")
disp(p)
disp("bar")