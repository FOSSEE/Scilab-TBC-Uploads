
//example 9.1
//page 308
clc; funcprot(0);
//initialisation of variable
S=1.26;
mu=0.862//N.s/m^2
rhow=998;//density
rhog=1.26*998;//density of glycerine
Q=0.1;
g=9.81;
L=100;
D=0.2;
pi=3.14;
f=0.0688;//coeff of friction
A=pi*0.2^2/4;
V=Q/A;
R=V*D*rhog/mu;
hf=f*L/D*V^2/2/g;
disp(hf,"head loss if glucerine is flowing(m of glycerine)");
//part2
mu=1.005*10^-3;
R=V*D*rhow/mu;
f=0.021;//coeff. of friction
hf=f*L/D*V^2/2/g;
disp(hf,"head loss if water is flowing(m of water)");
clear
