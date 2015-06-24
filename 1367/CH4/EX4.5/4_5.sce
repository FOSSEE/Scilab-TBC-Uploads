//Find Distance between two adjacent atoms
//Ex:4.5
clc;
clear;
close;
w_na=23;//atomic weight of Na
w_cl=35.5;//atomic weight of Cl
w=w_na+w_cl;//effective no.of atoms in FCC structure
n=4;//FCC
na=6.023*10^23;//Avagadrro's no.
w_4=w*n/na;//weight of 4 molecules in gm
p=2.18;//density in gm/cm^3
a=(w_4/p)^(1/3);//in cm
a1=a*10^8;//in angstorm
disp(a1,"unit cell dimension (in angstorm) = ");
d=a1/2;
disp(d,"Distance between two adjacent atoms (in Angstorm) = ");