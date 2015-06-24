
//example 9.6
//page 319
clc; funcprot(0);
//initialisation of variable
epsilon=0.025;//roughness
L=500;
pi=3.14;
g=9.81;
D=20/100;
Q=0.1;
S=5.43/100;
K=pi/4*sqroot(2*g)*(2*log10(D*100/epsilon)+1.14)*D^2.5;
Q=K*sqroot(S);
disp(Q,"flow rate(m^3/s)=");
clear
