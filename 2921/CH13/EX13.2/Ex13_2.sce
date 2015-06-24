clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-13.2 Page No.282\n');

//Normal plane pitch
Pd=16;
psi=45*%pi/180;
Pdn=Pd/cos(psi);

mprintf('\n Normal plane pitch = %f in.',Pdn);

N=24;
S=30000;
b=0.5;
Ne=N/cos(psi)^3;
Y=0.427;
Fs=S*b*Y/Pdn;

mprintf('\n Allowable force = %f lb.',Fs);

Dp=24/16;
n=600;
Vm=%pi*Dp*n/12;

mprintf('\n Surface speed = %f ft/min.',Vm);

Ft=Fs/((600+Vm)/600);

mprintf('\n Force transmitted = %f lb.',Ft);

P=Ft*Vm/33000;

mprintf('\n Power rating = %f hp.',P);

//Note-There is an error in the answer given in textbook
