// Example 6.1, page no-143
clear
clc
e=1.609*10^-19//C
eg=1.8  //eV
h=6.626*10^-34
c=3*10^8//m/s
E=e*eg
lamda=h*c/E
printf("The wavelength of light emitted from given LED is %.3f µm",lamda*10^7)
