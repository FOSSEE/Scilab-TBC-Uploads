clc
//initialisation of variables
a=45//deg
b=120//deg
r=1750//rpm
v=15//cm
p=1000//N.s/m^4
u1=15*10^-2//m
v1=0.5//m
//CALCULATIONS
U2=(2*%pi*r/60)*u1//m/s
V1=U2-[(v*v1)]//m/s
P=U2*V1//kPa
//RESULTS
printf('The pressure =% f kPa',P)
