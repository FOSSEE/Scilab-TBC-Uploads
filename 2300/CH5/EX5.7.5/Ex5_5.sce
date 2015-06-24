
//scilab 5.4.1
//windows 7 operating system
//chapter 5:Semiconductor Junction Diodes
clc
clear
e=1.6*10^(-19)//e=charge of an electron in C
kB=1.38*10^(-23)//kB=Boltzmann's constant in J/K
n=2//n=emission coefficient for silicon pn junction diode
T=300//T=Temperature in kelvin
//Is=Reverse saturation current in A
//V=bias voltage in V
//I=Is*(exp((e*V)/(n*kB*T))-1)//I=reverse current in A
//I=(-(Is/2))
a=(((n*kB*T)/e)*log(1/2))*10^3//a=bias for reverse current in silicon pn junction diode 
disp("mV",a,"V")
disp("The negative sign suggests diode in reverse bias")
