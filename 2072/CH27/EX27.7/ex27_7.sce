//Chapter 27
clc
//Example 7
//given
Lo=0.200000 //wavelength of X-rays in nm
h=6.63*10^-34 //in J.s
m_e=9.11*10^-31 // in Kg
c=3*10^8 //in m/s
theta=45 //in degrees
//wavelength is represented by d
delta_L=(h/(m_e*c))*(1-cosd(theta))
L=delta_L+Lo
printf("Wavelength of the scattered X-rays at the given angle in %f nm is",L)

//Answer given in textbook is wrong
