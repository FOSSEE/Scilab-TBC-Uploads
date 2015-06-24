//Exa3
clc;
clear;
close;
//given data
//atomic radius
r=1.278; //in Angstrum
//atomic weight
aw=63.5;
//Avogadro's number
an=6.023*10^23;
//copper has FCC structure for which
a=(4*r)/sqrt(2);// in Angstrum
a=a*10^-10;//in m
//Mass of one atom 
m=aw/an;//in gm
m=m*10^-3;//in kg
//volume of one unit cell of copper crystal,
V=a^3;//in meter cube
//Number of atoms present in one unit cell of Cu(FCC Structure),
n=4;
//Density of crystal
rho=(m*n)/V;//in kg/m^3
disp("Density of crystal is : "+string(rho)+"kg/m^3");
