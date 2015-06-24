clc
clear

//INPUT
mf=28.5*10^-6;//mean free path in cm
d=0.000178;//density of helium in gm/ml
m=6*10^-24;//mass of the helium atom in gm
a=(2^(0.5))*3.14;//constant

//CALCULATIONS
d=(m/(a*d*mf))^(0.5);//diameter of the size in cm

//OUTPUT
mprintf('the size of the helium atom is %3.10f cm',d)
