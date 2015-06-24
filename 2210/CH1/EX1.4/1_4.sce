//Chapter 1, Example 1.4
clc
n=105                           //no of coil turns
a=8*10^-5                       //cross sectional area in metre square
ur=230                          //relative permeability
uo=4*%pi*10^-7                  //permeability of air
Erms=10*10^-6                   //electric field strength
f=10^6                          //frequency in hertz

//calculation
erms=n*2*%pi*f*ur*uo*Erms*a*cos(0)

printf("r.m.s open circuit voltage = %.2f microVolt",erms*10^6)
