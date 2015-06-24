//Ex 2.12.2
clc;clear;close;
format('v',8);

//Given : 
NA=4*10^20;//per m^3
Vj=0.2;//Volt
V1=-1;//Volts
V2=-5;//Volts
A=0.8*10^-6;//m^2
epsilon_r=16;//for Ge
epsilon_o=8.85*10^-12;//permitivity
q=1.6*10^-19;//Coulomb
W1=sqrt(2*epsilon_r*epsilon_o*(Vj-V1)/q/NA);//m
CT1=epsilon_r*epsilon_o*A/W1;//
disp(CT1*10^12,"Transition capacitance(pF) : ");
W2=sqrt(2*epsilon_r*epsilon_o*(Vj-V2)/q/NA);//m
CT2=epsilon_r*epsilon_o*A/W2;//
disp(CT2*10^12,"New value of Transition capacitance(pF) : ");
