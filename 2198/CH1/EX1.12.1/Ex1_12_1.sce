//Ex 1.12.1
clc;clear;close;
format('v',9);

//Given : 
T=27+273;//K
ND=10^17;//per cm^3
ni=1.5*10^10;//per cm^3
n=ND;//per m^3//ND>>n
disp(n,"Electron concentration per cm^3 : ");
p=ni^2/n;//per m^3
disp(p,"Holes per cm^3 : ");
