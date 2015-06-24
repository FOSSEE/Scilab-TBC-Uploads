clear
clc;
D=3e2;
h=5e2;
rad=1.1;

m=(h^2  +  D^2)^(1/2);
n=(h^2  +  (D*2)^2)^(1/2);
reff=.7788* rad;
L=2e-7 * log ((2)^(1/6)* (D/reff)^(1/2) * (m/n)^(1/3)) *1e3;
mprintf("L=%.2f * 1e-4 H/phase/km",L*1e4);
