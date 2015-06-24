//Example 7.65
clc;
syms z n;
h1=(1/2)^n;
H1=symsum(h1*(z^-n),n,0,%inf);
h2=(-1/4)^n;
H2=symsum(h2*(z^-n),n,0,%inf);
H=(H1+H2)/2;