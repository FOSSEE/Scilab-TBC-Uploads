//Ex_2_4
clc;
clear;
close;
format('v',6);
//given data : 
N1=500;//turns
N2=2000;//turns
K=50/100;//coefficient for 50% flux linked
diBYdt=10;//A/s
L1=200;//mH
fi1BYI1=L1/N1;
M=N2*fi1BYI1;//mH
e2=M*10^-3*diBYdt;//V
disp(M/1000,"Mutual Inductance of two coil(H)");
disp(e2,"Induced emf in the coil having 1000 turns(V)");
