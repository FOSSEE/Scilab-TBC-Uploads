//Exa 1.4
clc;
clear;
close;
//given data
n=4;// no. of atoms per unit cell of silicon
AtomicWeight=28;//constant
AvogadroNo=6.021*10^23;//constant
m=AtomicWeight/AvogadroNo;//in gm
m=m/1000;//in Kg
a=5.3;//lattice constant in Angstrum
a=a*10^-10;//in meter
V=a^3;//in meter^3
rho=m*n/V;//in Kg/m^3
disp(rho,"Density of silicon crystal in Kg/m^3: ");