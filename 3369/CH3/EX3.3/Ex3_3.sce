//Chapter 3, Exmaple 3, page 104
//Maximum pressure in the chamber
clc
clear
//Making use of equation 3.10
N1 = (4*%pi*1.7*1.7*0.10*10^-10*10^-10)
N = 1/N1
//Using equation 3.2
R = 8314 // J/Kg*mol*K 
M = 28 // Mol^-1
N = 220*10**-8 // Kg
T = 300 // K
p =  N/M*R*T
printf("\nN = %e ",N1) // answer mentioned in the tectbook is wrong
printf("\nPressure = %f N/m^2",p)

//Answer vary due to round off error
