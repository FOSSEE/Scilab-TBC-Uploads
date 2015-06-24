//example 12.2
clc; funcprot(0);
Ap=%pi/4*1.75^2;
q=135.6;
w=0.83;
FS=4;
phi=36;
Nq=0.21*exp(0.17*phi);
Qp=Ap*q*(w*Nq-1);
Qpall=Qp/FS;
disp(Qpall,"allowed load in kN");

