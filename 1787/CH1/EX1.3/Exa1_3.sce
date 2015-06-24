//Exa 1.3
clc;
clear;
close;
//given data
r=1.278;//in Angstrum
AtomicWeight=63.5;//constant
AvogadroNo=6.023*10^23;//constant
//For FCC structure a=4*r/sqrt(2)
a=4*r*10^-10/sqrt(2);//in meter
V=a^3;//in meter^3
//mass of one atom = m
m=AtomicWeight/AvogadroNo;//in gm
m=m/1000;//in Kg
n=4;// no. of atoms per unit cell for FCC structure
rho=m*n/V;//in Kg/m^3
disp(rho,"Density of crystal in Kg/m^3: ");