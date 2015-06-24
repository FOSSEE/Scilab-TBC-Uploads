//Caption:Find Regulation and resultant excitation
//Exa:14.3
clc;
clear;
close;
pf=0.8//Power factor lagging
P=1000//Power of Synchronous generator(in KVA)
Eo=1.25//No load voltage(in per unit)
V=6600//Voltage of Synchronous generator(in volts)
f=50//Frequency(in hertz)
Fe=1//Field excitation to produce terminal voltage(in per unit)
Fa=1//Field excitation to produce full load current(in per unit)
Ft=sqrt(((Fe+(Fa*sind(acosd(pf))))^2)+((Fa*pf)^2))
Re=(Eo-Fa)*100/Fa
disp(Re,Ft,'Resultant excitation(in per unit) and regulation(in %)=')