//Exa 2.6
clc;
clear;
close;
format('v',7);

//Given Data
m=20;//Kg
mw=200;//Kg
Z1=15;//m
Z2=0;//m
g=9.81;//gravity constant

disp("(i) Stone is about to enter the water");
deltaPE=m*g*(Z2-Z1)/1000;//KJ
Q=0;//Heat Transfer
W=0;//Work Transfer
deltaE=Q-W;//Energy Transfer
//deltaE=deltaU+deltaKE+deltaPE
deltaU=0;//no change in temperature
deltaKE= deltaE-deltaU-deltaPE;//KJ
disp(deltaU,"deltaU in KJ : ");
disp(deltaPE,"deltaPE in KJ : ");
disp(deltaKE,"deltaKE in KJ : ");
disp(Q,"Q in KJ : ");
disp(W,"W in KJ : ");

disp("(ii) Stone has come to rest near the tank.");
Q=0;//Heat Transfer
W=0;//Work Transfer
deltaE=Q-W;//Energy Transfer
deltaKE=0;//rest condition
//deltaE=deltaU+deltaKE+deltaPE
deltaU= deltaE-deltaKE-deltaPE;//KJ
disp(deltaU,"deltaU in KJ : ");
disp(deltaPE,"deltaPE in KJ : ");
disp(deltaKE,"deltaKE in KJ : ");
disp(Q,"Q in KJ : ");
disp(W,"W in KJ : ");

disp("(iii) Heat is transfered to surroundings.");
deltaKE=0;//Energy Transfered to water
deltaPE=0;
W=0;
deltaE=deltaU+deltaKE+deltaPE
Q=deltaE+W;//KJ
disp(deltaU,"deltaU in KJ : ");
disp(deltaPE,"deltaPE in KJ : ");
disp(deltaKE,"deltaKE in KJ : ");
disp(Q,"Q in KJ : ");
disp(W,"W in KJ : ");
