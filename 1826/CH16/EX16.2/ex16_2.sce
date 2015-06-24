// Example 16.2, page no-417
clear
clc

e=1.6*10^-19//C
eg=1.43 //eV
E=e*eg
h=6.626*10^-34
c=3*10^8//m/s
lam=h*c/E
printf("The wavelength of emitted radiation is %.2f µm",lam*10^6)
