//To Compute the maximum flux set by an coil.

clc;
clear;

L1=0.5;
L2=1;
K=0.8;

N2=1500;

M=K*sqrt(L1*L2);
i1=20;

theta=poly(0,'t');

fact=derivat(theta);// Derivative of the time factor(Linear function of 't').

omega=314;// The Angular Frequency Factor

v2=M*fact*omega*i1;// Maximum Coil 2 Voltage

disp('cos 314t V',v2,'The Voltage Across Coil 2= ')

dflx=v2/N2;

Mxflux=(dflx/omega)*(1/fact);


disp('sin 314t Wb',Mxflux,'The flux setup by Coil 1= ')

disp('Wb',Mxflux,'The Maximum Flux Setup by Coil 1= ')



