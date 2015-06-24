//Ex 2.12.1
clc;clear;close;
format('v',8);

//Given : 
NA=4*10^20;//per m^3
Vj=0.2;//volt
V1=-1;//volts
V2=-5;//volts
epsilon_r=16;//for Ge
epsilon_o=8.85*10^-12;//permitivity
q=1.6*10^-19;//Coulomb
W1=sqrt(2*epsilon_r*epsilon_o*(Vj-V1)/q/NA);//m
disp(W1*10^6,"Width of depletion region(micro meter) : ");
W2=sqrt(2*epsilon_r*epsilon_o*(Vj-V2)/q/NA);//m
disp(W2*10^6,"New value of Width of depletion region(micro meter) : ");
