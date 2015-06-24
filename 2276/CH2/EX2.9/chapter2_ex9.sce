clc
clear

//input
l=0.002;//length in meters
a=0.01;//area in square meters
pd=250000;//potential gradient in V/m
h=250000;//magnetic force in A/m
e0=8.85*(10^-12);//absolute permittivity
er=1;//relative permittivity of  air
u0=1.257*(10^-6);//absolute permeability
ur=1;//relative permeability of air

//calculations
D=e0*er*pd;//electric flux density in C/sq.m
Ee=((D^2)*l*a)/(2*e0*er);//energy stored in electric field in joules 
B=h*u0*ur;//magnetic flux density
Em=((B^2)*l*a)/(2*u0*ur);//energy stored in magnetic field
k=Ee/Em;//ratio of energy in electric field to magnetic field

//output
mprintf('the ratio of energies in electric to magnetic field is %3.10f :1',k)
