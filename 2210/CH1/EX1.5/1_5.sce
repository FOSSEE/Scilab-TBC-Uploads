//Chapter 1, Example 1.5
clc
n=100                           //no of coil turns
a=8*10^-5                       //effective cross-sectional area in metre
ur=200                          //relative permeability
uo=4*%pi*10^-7                  //permeability, of air
ao=60*%pi/180                   //angle of incidence of magnetic field
f=10^6                          //frequency in hertz
E=100*10^-6                     //electric field strength in V/m
z=377                           //wave impedance in ohm

//calculation
w=2*%pi*f
erms=n*w*ur*uo*a*(E/z)*cos(ao)

printf("r.m.s open circuit voltage induced = %.3f uV",erms*10^6)
