//Chapter 2, Problem 5
clc
f=1.6*10^6                          //frequency in hertz
Zoc_mag=900                         //magnitude in ohm of open circuit impedance 
Zoc_ang=-30                         //angle in degree of open circuit impedance
Zsc_mag=400                         //magnitude in ohm of short circuit impedance
Zsc_ang=-10                         //angle in degree of short circuit impedance

//calculation of charactersitics impedance
Z0_mag=sqrt(Zoc_mag*Zsc_mag)
Z0_ang=Zoc_ang-Zsc_ang

printf("Z0 (magnitude) = %d ohm\n Z0(angle) = %d degree",Z0_mag,Z0_ang)
