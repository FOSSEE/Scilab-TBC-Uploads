
//Initialisation of variables
clc
Z=1
n=1
m=9.11e-31//kg
e=1.6e-19//coulomb
o=8.85e-12//farad per metre
h=6.625e-34//joule sec
E=Z^2*m*e^4/(8*o^2*h^2*n^2)//relation 4.12
printf('energy is %e joules \n',E)

