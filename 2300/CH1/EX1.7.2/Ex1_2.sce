
//scilab 5.4.1
//windows 7 operating system
//chapter 1:Basic Ideas:Energy Bands In Solids
clc
clear
//given data
m=7360*9.11*(10^-31);//m=mass of the ion in kg
q=2*1.6*(10^-19);//q=charge of the ion in Coulomb
V=2000;//V=potential difference in Volt
//solving velocity & kinetic energy of the ion
v=sqrt((2*q*V)/m)//v=velocity of the ion
disp("m/s",v,"v=")
Ek=(1/2)*m*(v^2)//Ek=kinetic energy of the ion
disp("J",Ek,"Ek=")
