clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
Q=0.1*100^2 /(24*3600) //m^3/s
Cd=0.61
theta=60 //degrees
Hd=Q/(Cd*8/15 *sqrt(2*g) *tand(theta/2))
H=Hd^(2/5)
//results
printf("apex of weir must be set %.1f cm below the free surface",H*100)
//The answer in the textbook is wrong. Please verify it
