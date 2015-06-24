
//scilab 5.4.1
//windows 7 operating system
//chapter 4:Metal-Semiconductor Contacts
clc
clear
//given
e=1.6*10^-19//e=charge of an electron in C
V=0.32//V =applied forward bias in V
kB=1.38*10^(-23)//kB=Boltzmann's constant in J/K
T=300//T=Temperature in Kelvin
Js=0.61//Js=reverse saturation current density in A/m^2
J=Js*(exp((e*V)/(kB*T))-1)//J=current density in A/m^2
disp("A/m^2",J,"J=")
A=4*10^-8//A=cross sectional area in m^2
I=(J*A)*10^3//I=current
disp("mA",I,"I=")
