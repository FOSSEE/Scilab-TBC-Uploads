//fiber optic communications by joseph c. palais
//example 8.3
//OS=Windows XP sp3
//Scilab version 5.4.1
//given
clc
clear all
n1=1.465//refrative index of core
n2=1.46//refractive index of cladding
lambda=0.8//wave length in um
V=2.4//normalized frequency
wbya=1.1//w/a ratio for V=2.4
na=sqrt((n1^2)-(n2^2))//numerical aperture
mprintf("Numerical aperture=%f",na)
a=(lambda*V)/(2*%pi*na)//core radius
mprintf("\nCore radius=%fum",a)
spot_size=wbya*a//spot size in um
mprintf("\nSpot Size=%fum",spot_size)
