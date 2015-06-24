
//example 9.7
//page 320
clc; funcprot(0);
//initialisation of variable
epsilon=0.025;//roughness
L=500;
pi=3.14;
g=9.81;
Q=0.1;
S=5.43/100;
K=Q/sqroot(S);
//solving for D
deff('y=f(D)','y=3.14/4*sqroot(2*9.81)*(2*log10(D/0.025)+1.14)*D^2.5-.3');
[x]=fsolve(0.1,f);
disp(x,"diameter(m):");
clear
