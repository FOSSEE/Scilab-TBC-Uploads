//Computation of Mutual and self inducatances

clc;
clear;

n1=600;
i1=2.5;
flux1=0.4*(10^-3);
flux2=0.8*(10^-3);
n2=2000;
tflux=flux1+flux2;

L1=n1*tflux/i1;

K=flux2/tflux;

M=n2*flux2/i1;

L2=((M/K)^2)/L1;

disp('H',L1,'The self inductance of coil 1= ')
disp('H',L2,'The self inductance of coil 2= ')

disp('(Note the accuracy of the answer.)')
disp('H',M,'The Mutual inductance of both coils= ')
disp(K,'The coupling co-efficient')
