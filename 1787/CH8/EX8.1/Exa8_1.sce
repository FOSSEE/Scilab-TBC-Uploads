//Exa 8.1
clc;
clear;
close;
//given data :
NA=10^22;//in atoms/m^3
ND=10^22;//in atoms/m^3
De=25*10^-4;//in m^2/s
Dh=10^-3;//in m^2/s
TAUeo=500;//in ns
TAUho=100;//in ns
ni=1.5*10^16;//in atoms/m^3
VR=-10;//in Volt
epsilon=11.6*8.854*10^-12;//in F/m
e=1.6*10^-19;//in Coulamb
VT=26;//in mV
GL=10^27;//in m^-3 s^-1

Le=sqrt(De*TAUeo*10^-9);//in um
Le=Le*10^6;//in um
Lh=sqrt(Dh*TAUho*10^-9);//in um
Lh=Lh*10^6;//in um
Vbi=VT*10^-3*log(NA*ND/ni^2);//in Volt
Vo=Vbi;//in Volt
VB=Vo-VR;//in Volt
W=sqrt((2*epsilon*VB/e)*(1/NA+1/ND));//in um
W=W*10^6;//in um
JL=e*(W+Le+Lh)*10^-6*GL;//in A/cm^2
disp(JL/10^4,"Steady state photocurrent density in A/cm^2 : ");