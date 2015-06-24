
//scilab 5.4.1
//windows 7 operating system
//chapter 5:Semiconductor Junction Diodes
clc
clear
//given
e=1.6*10^-19//e=charge of an electron in C
V1=0.06//V1=applied forward bias in V
V2=(-0.06)//V2 =applied reverse bias in V
kB=1.38*10^(-23)//kB=Boltzmann's constant in J/K
T=300//T=Temperature in Kelvin
//Is=reverse saturation current in A
//I1=Is*(exp((e*V1)/(kB*T))-1)//I1=current for forward bias
//I2=Is*(exp((e*V2)/(kB*T))-1)//I2=current for reverse bias
a=((exp((e*V1)/(kB*T))-1))/((exp((e*V2)/(kB*T))-1))//a=(I1/I2)
disp("",abs(a),"a")
