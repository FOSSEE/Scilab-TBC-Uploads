

//exapple 7.3 
clc; funcprot(0);
// Initialization of Variable
dr=2;//dia of column
mu=2.02/10^5;
rho=998;
K=5.1;
g=9.81;
Q=10000/3600;
l=50.8/1000;
d=l;
n=5790;
len=18;
thik=6.35/1000;
pi=3.1414;
//part1
//calculation
CA=pi*dr^2/4;//cross sectional area
u=Q/CA;
Vs=pi*d^2/4*l-pi*l/4*(d-2*thik)^2;//volume of each ring
e=1-Vs*n;
Surfacearea=pi*d*l+2*pi*d^2/4+pi*(d-2*thik)*l-2*pi*(d-2*thik)^2/4;
S=Surfacearea/Vs;
S=round(S*10)/10;
delP=K*S^2/e^3*mu*len*u*(1-e)^2;
delh=delP/rho/g;
disp(delh*100,"pressure drop in terms of (cm of H20)")

