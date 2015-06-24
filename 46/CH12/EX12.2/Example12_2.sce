//Example 12.2
clc
syms Gc1 Gc2 G1 G2 G3 H1 H2;
Ga=Gc2*G1/.H2
Gb=G2*G3
g=Gc1*Ga*Gb/.H1;
g=simple(g);
disp(g,'C/R=')