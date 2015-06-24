//Chapter 3, Exmaple 10, page 106
//KE and velocity of photoelectron
clc
clear
h = 4.15*10**-15
c = 3*10**8
l = 200*10**-10
BE = 13.6 // Binding energy
PE = h*c/l
KE = PE-BE // Kinetic energy of photoelectron
Ve = sqrt((2*KE*1.6*10**-19)/9.11*10**-31)*10**31
printf("\nPhoton energy eV = %e ",PE)
printf("\nKinetic energy eV = %e ",KE)
printf("\nVelocity m/s = %e ",Ve)

//Answer may vary due to round off error
