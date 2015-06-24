// Example 4.15 page no-228
clear
clc

a=2*10^-4  //cm
rho = 10 //Ohm-cm
eps=12/(36*%pi*10^11) 
mup = 500  //cm^2/V-sec
ena=1/(rho*mup)

vp= (ena*a^2)/(2*eps)
printf("Vp = %.2f V",vp)
