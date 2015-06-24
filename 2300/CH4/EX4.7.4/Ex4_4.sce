
//scilab 5.4.1
//windows 7 operating system
//chapter 4:Metal-Semiconductor Contacts
clc
clear
//given
//Js=A*(T^2)*exp(-((e*Qbn)/(kB*T)))
kB=1.38*10^(-23)//kB=Boltzmann's constant in J/K
T=300//T=temperature in Kelvin
e=1.6*10^-19//e=charge of an electron in C
Js=6*10^-5//Js=emission current density in A/cm^2
Qbn=0.668//Qbn=barrier height in V
A=(Js/(T^2))*exp((e*Qbn)/(kB*T))//A=Richardson constant
disp("(cm^-2)(K^-2)",A,"A=")
