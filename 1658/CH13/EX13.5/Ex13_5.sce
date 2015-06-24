clc;
//e.g 13.5
N=150;
mur=3540;
mu0=4*%pi*10**-7;
l=0.05;
A=5*10**-4;
L=(mur*mu0*A*N*N)/l;
disp('H',L*1,"L=");
