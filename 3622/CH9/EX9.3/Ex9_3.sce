//Initialisation of variables
clc
energy=0.1/100//energy converted
amp_watt=5/1000
m=9e-31//mass of electron
e=1.6e-19//charge of electron
V=100000//volts
v=sqrt(2*V*e/m)
EnConv=V*energy*amp_watt
EnConvinJ=4.18*EnConv
printf('maximum speed of electron is %e metre per second \n',v)
printf('Rate of production of heat is %f calories per second \n',EnConvinJ)
