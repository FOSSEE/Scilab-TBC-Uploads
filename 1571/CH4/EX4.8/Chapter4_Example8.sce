clc
clear

//INPUT
p=10;//pressure of the gas in atm
v=5000;//volume of the gas in ml
l=76;//length of the mercury in barometer in cm
g=981;//accelaration due to gravity in cm/sec^2
d=13.6;//density of the mercury in gm/cc

//CALCULATIONS
e=3*p*v*l*g*d;//kinetic energy of the molecule in ergs

//OUTPUT
mprintf('the kinetic energy of the molecule is %3.2fergs',e)
