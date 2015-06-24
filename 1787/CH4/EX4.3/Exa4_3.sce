//Exa4.3
clc;
clear;
close;
//given data
T=300;//in Kelvin
ND=3*10^15;//in cm^-3
NA=10^16;//in cm^-3
ni=1.6*10^10;//in cm^-3
po=(NA-ND)/2+sqrt(((NA-ND)/2)^2+ni^2);//in cm^-3
no=ni^2/po;//in cm^-3
disp(po,"Majority carrier hole concentration in cm^-3 : ");
disp(no,"Minority carrier electron concentration in cm^-3 : ");