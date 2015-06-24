clc
d=12; //m; diameter of spherical balloon
V=4/3*%pi*(d/2)^3;
T=303; //K
p=1.21*10^5; //Pa
pc=12.97*10^5; //Pa
Tc=33.3; //K
R=8314/2;

pr=p/pc;
Tr=T/Tc;
Z=1;

m=p*V/Z/R/T;
disp("Mass of H2 in the balloon =")
disp(m)
disp("kg")