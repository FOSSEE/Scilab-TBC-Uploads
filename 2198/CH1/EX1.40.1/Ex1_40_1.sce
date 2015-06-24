//Ex 1.40.1
clc;clear;close;
format('v',9);

//Given : 
ND=10^17;//per cm^3
ni=1.5*10^10;//per cm^3
no=ND;//per cm^3///Nd>>ni
po=ni^2/no;//per cm^3
disp(po,"Equilibrium hole concentration (per cm^3) : ");
