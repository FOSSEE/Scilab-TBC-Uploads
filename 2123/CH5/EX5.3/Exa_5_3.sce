//Example No. 5.3
clc;
clear;
close;
format('v',7);

//Given Data : 
Ia=100;//A
V=200;//volt
N=600;//rpm
Ra=0.05;//ohm
Eff=85/100;//
Ia1=Ia*Eff;//armature current in separately excited dc motor
emf=V-Ia*Ra;//V(motoring mode induced emf)
N1=500;//rpm(generating mode speed)
Gen_emf=emf*N1/N;//V
Vo=Gen_emf-Ia1*Ra;//V
disp(Vo,"Voltage of source in Volt : ");
