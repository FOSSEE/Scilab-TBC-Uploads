//Exa 1.2
clc;
clear;
close;
//given data :
H=5.2;//in mA/m
Eta=120*%pi;//constant
//Formula : E/H=Eta
E=H*10^-3*Eta;//in V/m
disp(round(E),"Strength of Electric field in free space in V/m : ");