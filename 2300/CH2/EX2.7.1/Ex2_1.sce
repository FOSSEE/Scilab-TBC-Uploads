
//scilab 5.4.1
//windows 7 operating system
//chapter 2:Electron Emission from Solids
clc
clear
//given
A=6.02*(10^5)//A=thermionic emission constant in A(m^(-2))(K^(-2))
Ew=4.54//Ew=work function in eV
T=2500//T=temperature in Kelvin
kB=1.38*10^(-23)//kB=Boltzmann's constant in J/K
e=1.6*10^(-19)//e=charge of anelectron in C
b=(e*Ew)/kB//b=thermionic emission constant in K
disp("K",b,"b=")
Jx=A*(T^2)*exp(-b/T)//Jx=emission current density in A/m^(2)
disp("A/(m^2)",Jx,"Jx=")
n=Jx/e//n=number of electrons emitted per unit area per second in (m^-2)(s^-1)
disp("(m^-2)(s^-1)",n,"n=")
