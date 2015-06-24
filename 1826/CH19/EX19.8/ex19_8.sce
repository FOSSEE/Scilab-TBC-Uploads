// Example 19.8, page no-547
clear
clc
ba=7.1//Bohr Magnetron
aw=1.8*10^6 //A/m
d=7.8*10^3
avg=6.023*10^26
M=157.26
mu=4*%pi*10^-7
k=9.27*10^-24 //Bohr Magnetron
N=d*avg/M
mm=N*ba*k
B=N*mu*k*7.1
printf("\nThe saturation magnetic field of Gd atom is %f Wb/m^2",B)
