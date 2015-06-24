clc
clear
//input
n=7//order of fringe
l=0.63*10^-6 //wavelength
x=24.8*10^-3 //seperation of bands
d=1.5
//calculation
a=n*d*l/x//slit seperation
//output
printf("the slit seperation is %3.3e m",a)
