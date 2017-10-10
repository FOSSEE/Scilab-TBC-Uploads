//Initialisation of variables
clc
Z=1
m=9.11e-31//kg
e=1.6e-19//coulomb
o=8.85e-12//farad per metre
h=6.625e-34//joule sec
V=Z^2*m*e^3/(8*o^2*h^2)
printf('ionization potential is %f volts \n',V)
