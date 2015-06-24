//Ex 1.40.9
clc;clear;close;
format('v',9);

//Given : 
ni=10^16;//per m^3
ND=10^22;//per m^3
n=ND;//per m^3//ND>>ni
disp(n,"Electron concentration(per m^3) : ");
p=ni^2/n;//per m^3
disp(p,"Electron concentration(per m^3) : ");
