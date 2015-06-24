//Ex 2.10
clc;clear;close;
format('v',6);
A=800;//mm^2(Cross sectional area)
r=170;//mm(radius)
N1=500;//turns
N2=700;//turns
mur=1200;//relative permeability
mu0=4*%pi*10^-7;//constant
S=2*%pi*r*10^-3/(mu0*mur*A*10^-6);//H
L1=N1^2/S;//H
disp(L1,"Self Inductance of coil 1(H)");
L2=N2^2/S;//H
disp(L2,"Self Inductance of coil 2(H)");
k=1;//constant
M=k*sqrt(L1*L2);//H
disp(M,"Mutual Inductance(H)");
