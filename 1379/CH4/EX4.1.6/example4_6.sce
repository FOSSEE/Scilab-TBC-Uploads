

//exapple 4.6 
clc; funcprot(0);
// Initialization of Variable
rho=999;
rhos=8020;//density of steel
g=9.81;
pi=3.14;
df=14.2/1000;//dia of float
Af=pi*df^2/4;//area of float
Cd=0.97;
nu=1/rho;
Q=4/1000/60;
G=Q*rho;
//calculation
x=0.5*(18.8-df*1000)/280*(280-70);
L=df*1000+2*x;
L=L/1000;
A1=pi*L^2/4;
A0=A1-Af;
Vf=Af/g/(rhos-rho)/2/nu*(G*nu/Cd/A0)^2*(1-(A0/A1)^2);
m=Vf*rhos;
disp(m*1000,"mass of float equired in (g):")
