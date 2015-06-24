//Exa 1.34
clc;
clear;
close;
format('v',9);

//Given Data :
m=1;//Kg
v=1;//m^3
T=127+273;//K
a=138;//KNm^4/(Kgmol)^2
a=a*10^3;//Nm^4/(Kgmol)^2
M_O2=32;//
vm=v*M_O2;//m^3/Kgmol
//p*v=n*R*T
n=1;
R=8314.3;//gas constant
p=n*R*T/vm;//N/m^2
disp(p,"Pressure using perfect gas equation in N/m^2 : ");
//[p+a/vm^2]*[vm-b]=R*T
b=0.0318;
p=R*T/(vm-b)-a/vm^2;//N/m^2
disp(p,"Pressure using Vander Walls equation in N/m^2 : ");
