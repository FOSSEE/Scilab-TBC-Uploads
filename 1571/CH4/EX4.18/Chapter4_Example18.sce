clc
clear

//INPUT
t=288;//temperature in K
k=1.38*10^(-16);//boltzmann constant in erg/deg
N=6.02*10^23;//avagadro number
m=32/N;//mass of each oxygen molecule in gm
v=196*10^-6;//viscosity in poise

//CALCULATIONS
av=((8*k*t/(3.14*m))^0.5);//average velocity in cm/sec
d=(m*av/(3*3.14*2^(0.5)*v))^0.5;//diameter of the molecule in cm

mprintf('diameter of the molecule is %3.10f cm',d)
