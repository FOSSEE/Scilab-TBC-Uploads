//Exa4.2
clc;
clear;
close;
//given data
T=300;//in Kelvin
ND=10^16;//in cm^-3
NA=0;//in cm^-3
ni=1.5*10^10;//in cm^-3
no=ND/2+sqrt((ND/2)^2+ni^2);//in cm^-3
po=ni^2/no;//in cm^-3
disp(no,"Majority carrier electron concentration in cm^-3 : ");
disp(po,"Minority carrier hole concentration in cm^-3 : ");