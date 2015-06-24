//Caption:Find the induced emf in coil
//Exa:2.1
clc;
clear;
close ;
N=1000;//Number of turns
phy_1=100*10^-3;//initial magnetic flux (in webers)
phy_2=20*10^-3;//final magnetic flux (in webers)
phy=phy_2-phy_1;//change in magnetic flux
t=5;//(in seconds)
e=(-1)*N*(phy/t);//induced emf (in volts)
disp(e,'Induced emf (in volts)=')