clc;
clear all;
ue=3850;//mobility of electron
sigma=5;//conductivity of ntype semiconductor
e=1.6*1e-19;//charge of electron
Nd=sigma/(e*ue);//density of donor atoms
disp('cm^-3',Nd,'density of donor atoms is=');
