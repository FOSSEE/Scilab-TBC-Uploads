clc
clear
//INPUT DATA
x=5.87*10^7//electrical conductivity in ohm^-1 m^-1
k=380//thermal conductivity of copper in W m-1 K^-1
t=293//temperature of copper in k

//CALCULATION
L=(k/(x*t))/10^-8//Lorentz number in W ohm K^-2 *10^-8

//OUTPUT    
printf('Lorentz number is %3.4f *10^-8 W.ohm.K^-2',L)
