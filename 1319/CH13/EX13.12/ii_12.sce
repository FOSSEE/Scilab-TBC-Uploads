// To determine Mutual and Self Inductances

clc;
clear;

K=0.8;
I1=3;
flux1=0.4*(10^-3);
E2=85;
t=3*(10^-3);
N1=300;

L1=N1*flux1/I1;

M= E2*t/I1;

L2=(((M/K)^2)/L1);

flux2=K*flux1;

N2=(M*I1/flux2);

disp('H',L1,'The inductance of coil 1');
disp('H',L2,'The inductance of coil 2');
disp('H',M,'The inductance between the coils');
disp('Turns',N2,'The number of turns of coil 2');
