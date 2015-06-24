//example 5.9
clc; funcprot(0);
Ny=23.76;
Nq=16.51;
q=3*110;
Gamma=110;
B=4;
Nqe=0.63*Nq;
Nye=0.4*Ny;
que=q*Nqe+1/2*Gamma*B*Nye;
disp(que,"bearing capacity in lb/ft^2");
//part 2
V=0.4;
A=0.32;
g=9.81;
kh=0.26;
k=0.92;//tan(alphae)
Seq=0.174*k*V^2/A/g*kh^-4/A^-4;
disp(Seq,"settelement in m");
disp(Seq*39.57,"settlement in inches")

