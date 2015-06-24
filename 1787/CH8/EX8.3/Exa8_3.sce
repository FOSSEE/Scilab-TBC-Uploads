//Exa 8.3
clc;
clear;
close;
//given data :
NA=7.5*10^24;//in atoms/m^3
ND=1.5*10^22;//in atoms/m^3
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
JS=e*(ni^2)*(De/(Le*10^-6*NA)+De/(Lh*10^-6*ND));//in A/cm^2
JL=12.5;//in mA/cm^2
VOC=VT*log(1+JL/JS);//in Volt
disp(VOC,"Open circuit voltage in Volt : ");
//Note : Answer in the book is wrong.