
//example 9.8
//page 326
clc; funcprot(0);
//initialisation of variable
Q=0.075;
L=30;
D=0.1;
pi=3.14;
k=0.5;
K=10;
g=9.81;
nu=1.007*10^-6//kinematic viscosity
A=pi*D^2/4;
V=Q/A;
R=V*D/nu;
//using moody's chart
f=0.025;
hf1=f*L*V^2/2/g/D;//head loss by friction
hf2=k*V^2/2/g;//head loss due to contraction
hf3=K*V^2/2/g;//head loss due to expansion
hf=hf1+hf2+hf3;
disp(hf,"total head loss (m of H2O)=");
clear
