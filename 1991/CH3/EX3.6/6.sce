clc
clear
//input
k=16
w=23
//calculation
//1.wavelength
l=2*%pi/k
//output
printf("the wavelength is %3.3f m",l)
//2.wavespeed
v=(l*w)/(2*%pi)
printf("\nthe wavespeed is %3.3f m/s",v)
//3.pase difference
pha=(0.5*2*%pi)/0.39 // phase difference of molecules 0.5m apart 
printf("\n the phase difference is %3.3f radians",pha)
