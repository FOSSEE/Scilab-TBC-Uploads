
//scilab 5.4.1
//windows 7 operating system
//chapter 5:Semiconductor Junction Diodes
clc
clear
e=1.6*10^(-19)//e=charge of an electron in C
kB=1.38*10^(-23)//kB=Boltzmann's constant in J/K
//V,V1=forward bias voltagesin V
n=2//n=emission coefficient for silicon pn junction diode
T=300//T=Temperature in kelvin
//Is=Reverse saturation current in A
//I=Is*(exp((e*V)/(n*kB*T)))//I=current for forward bias voltage V
//2I=Is*(exp((e*V1)/(n*kB*T)))//2I=current for forward bias voltage V1
//exp((e*(V1-V)/(n*kB*T)))=2
a=(((n*kB*T)/e)*log(2))*10^3//a=(V1-V)=increase in the bias voltage in V
disp("mV",a,"V1-V")



