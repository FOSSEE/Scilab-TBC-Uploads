//Ex 2.12.3
clc;clear;close;
format('v',8);

//Given : 
NA=3*10^20;//per m^3
Vj=0.2;//Volt
V=-10;//Volts
A=1*10^-6;//m^2
epsilon_r=16;//for Ge
epsilon_o=8.854*10^-12;//permitivity
q=1.6*10^-19;//Coulomb
W=sqrt(2*epsilon_r*epsilon_o*(Vj-V)/q/NA);//m
disp(W*10^6,"Width of depletion region(micro meter) : ");
CT=epsilon_r*epsilon_o*A/W;//
disp(CT*10^12,"Transition capacitance(pF) : ");
//Answer is wrong in the textbook.
