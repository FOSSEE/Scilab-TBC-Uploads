// Example 2.16 page no-71
clear
clc

A = 9.64 * 10^14
EG = 0.25 //eV
n1 = 6.25*10^26///cm^3
na=3*10^14
nd=2*10^14
n=-(10^14)+(sqrt(10^28+4*6.25*10^26))
n=n/2
printf("\nn=%.1f*10^12 electrons/cm^3\np=%.2f*10^14 holes/cm^3\nAs p> n, this is p-type semiconductor.",n/10^12,(n+10^14)/10^14)
