//Exa 1.41
clc;
clear;
close;
format('v',7);

//Given Data :
ma=0.4;//Kg
mb=0.8;//Kg
Ma=44;
Mb=29;
V=0.4;//m^3
T=300;//K
Rdash=8314.3;//J/Kgk
Ra=Rdash/Ma;//Nm/KgK
Rb=Rdash/Mb;//Nm/KgK
na=ma/Ma;//moles
nb=mb/Mb;//moles
//p*V=n*R*T
pa=na*Rdash/1000*T/V;//bar
pb=nb*Rdash/1000*T/V;//bar
disp(pa,"Pressure of container A in KPa : ");
disp(pb,"Pressure of container B in KPa : ");
p=pa+pb;//Kpa
disp(p,"Pressure of mixture in KPa : ");
//Ans of Pb is wrong in the book.
