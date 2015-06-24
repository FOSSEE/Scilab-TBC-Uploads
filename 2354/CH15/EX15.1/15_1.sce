//example 15.1
clc; funcprot(0);
// Initialization of Variable
k=1.7;
delT=250;
L=0.15;
H=0.5;
W=1.2;
qx=k*delT/L;
qx=H*W*qx;
disp(qx,"heat flux in W");
clear()
