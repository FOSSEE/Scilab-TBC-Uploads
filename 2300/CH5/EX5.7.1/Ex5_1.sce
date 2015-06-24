
//scilab 5.4.1
//windows 7 operating system
//Chapter 5:Semiconductor Junction Diodes
clc
clear
//I=Is*(exp((e*V)/kB*T)-1)
I=50*10^(-3)//I=Forward current in ampere
Is=5*10^(-6)//Is=Reverse saturation current in ampere
e=1.6*10^(-19)//e=charge of electron in coulomb
//V=voltage
kB=1.38*10^(-23)//kB=Boltzmann's constant in Joule/kelvin
T=300//T=Temperature in kelvin
a=(I/Is)+1
//exp((e*V)/kB*T)=a
V=((kB*T)/e)*log(10^4)
disp("V",V,"V=")
