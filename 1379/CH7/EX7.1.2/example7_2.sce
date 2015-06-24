

//exapple 7.2 
clc; funcprot(0);
// Initialization of Variable
mu=2.5/1000;
rho=897;
g=9.81;
pi=3.1414;
K=5.1;
l=6.35/1000;
d=l;
hei=24.5+0.65;
len=24.5;
dc=2.65;//dia of column
thik=0.76/1000;
Vs=pi*d^2/4*l-pi*l/4*(d-2*thik)^2;//volume of each ring
n=3.023*10^6;
e=1-Vs*n;
e=round(e*1000)/1000;
Surfacearea=pi*d*l+2*pi*d^2/4+pi*(d-2*thik)*l-2*pi*(d-2*thik)^2/4;
S=Surfacearea/Vs;
S=round(S);
delP=hei*g*rho;
delP=round(delP/100)*100;
u=e^3*delP/K/S^2/mu/(1-e)^2/len;
Q=pi*dc^2/4*u;
disp(Q,"initial volumetric flow rate in (m^3/s):")
