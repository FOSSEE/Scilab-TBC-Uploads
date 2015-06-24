//Ex 1.5.1
clc;clear;close;
format('v',6);

//Given : 
t1=35;//degreeC
t2=60;//degreeC
T1=t1+273;//K
T2=t2+273;//K
disp("Forbidden gap for Si : ");
EG1_Si=1.21-3.6*10^-4*T1;//eV
disp(EG1_Si,"at 35 degree C in eV")
EG2_Si=1.21-3.6*10^-4*T2;//eV
disp(EG2_Si,"at 60 degree C in eV")
disp("Forbidden gap for Ge : ");
EG1_Ge=0.785-2.23*10^-4*T1;//eV
disp(EG1_Ge,"at 35 degree C in eV")
EG2_Ge=0.785-2.23*10^-4*T2;//eV
disp(EG2_Ge,"at 60 degree C in eV")
