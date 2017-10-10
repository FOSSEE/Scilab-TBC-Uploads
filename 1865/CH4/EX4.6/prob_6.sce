
//Problem 6
//Calculate the temporal coherence length for mercury vapour lamp 
clear
clc
w=546.1//wavelength (in nm)
dv=6*(10)^8//emission bandwidth (in Hz)
c=3*(10)^8//speed of light (in m/s)
dw=((w*(10)^(-9))^2*(dv))/c;//dw (in m)
l=(w*(10)^(-9))^2/dw// temporal length (in m)
printf('temporal length = %.2f m ',l)