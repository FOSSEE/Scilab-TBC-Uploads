//Initialisation of variables
clc
e=1.6e-19//coulomb
o=8.85e-12//farad per metre
h=6.625e-34//joule sec
v=sqrt(e^4/(4*o^2*h^2))
printf('velocity is %e metre per second \n',v)
