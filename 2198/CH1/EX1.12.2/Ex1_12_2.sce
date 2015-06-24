//Ex 1.12.2
clc;clear;close;
format('v',9);

//Given : 
Vol=4*50*1.5;//mm^3
ni=2.4*10^19;//per m^3
p=7.85*10^14;//per m^3
n=ni^2/p;//per m^3
Vol=Vol*10^-9;//m^3
TotalElectron=n*Vol;//no. of electrons
disp(TotalElectron,"Total free electrons per m^3 : ");
