
//scilab 5.4.1
//windows 7 operating system
//chapter 2:Electron Emission from Solids
clc
clear
//given
T=2673//T=temperature in Kelvin
dT=10//dT=change in temperature in Kelvin
Ew=4.54//Ew=work function in eV
e=1.6*10^(-19)//e=charge of anelectron in C
kB=1.38*10^(-23)//kB=Boltzmann's constant in J/K
//I=(S*A*(T^2))*exp(-((e*Ew)/(kB*T))//I=emission current,S=surface area of the filament,dI=change in emission current
d=((2*dT)/T)+(((e*Ew)/(kB*(T^2))*dT))//d=change in emission current
disp("",d,"d=")
d*100//percent change in emission current
disp("%",d*100,"d*100=")
