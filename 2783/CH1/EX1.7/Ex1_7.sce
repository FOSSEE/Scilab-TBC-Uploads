clc
//initialization of new variables
clear
T=300 //K
gama=1.4
R=286.6
//calculation
// for air
a=sqrt(gama*R*T)
//result
printf('The speed of sound in air is %.1f m/s ',a)
// for sea water
E=2.34*10^9 // N/m^2
rho=1000 //kg/cm^2
a=sqrt(E/rho)
//result
printf(' \n The speed of sound in sea waer is %d m/s ',a)
