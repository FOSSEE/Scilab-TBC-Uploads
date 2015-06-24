clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-13.5 Page No.292\n');

//Normal circular pitch
Pc=0.524;
LA=4.77*%pi/180;
Pcn=Pc*cos(LA);

mprintf('\n Normal circular pitch = %f in.',Pcn);

//Force transmitted
hp=5;
n=29.2;
T=63000*hp/n;
Dp=10;
Ft=2*T/Dp;

mprintf('\n Force transmitted = %f lb.',Ft);

Vm=%pi*Dp*n/12;

//Dynamic load
Fd=(1200+Vm)*Ft/1200;

mprintf('\n Dynamic load = %f lb.',Fd);

//Force allowable
Su=95*10^3;
Y=0.392;
b=1;
Sn=0.5*Su;
Fs=Sn*Y*b*Pcn/%pi;

mprintf('\n Force allowable = %f lb.',Fs);

//Safty factor
Nsf=Fs/Fd;

mprintf('\n Safty factor = %f .',Nsf);

//Note-There is an error in the answer given in textbook
