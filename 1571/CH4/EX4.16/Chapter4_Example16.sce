clc
clear

//INPUT
n=85*10^(-6);//coefficent of viscosity in dynes/cm^2/velocity gradient
c=16*10^4;//velocity in cm/sec
p=0.000089;//density in gm/cc
N=6.06*10^23/22400;//avagadro number
a=(2)^(0.5)*(22/7);//constant

//CALCULATIONS
mf=(3*n/(p*c));//mean free path in cm
cr=c/mf;//collision rate
d=(1/(a*N*mf))^(0.5);//molecular diameter of hydrogen gas in cm

mprintf('the mean free path is %3.6fcm \n hte collision rate is %3.2f \n the molecular diameter of hydrogen gas is %3.10fcm',mf,cr,d)
