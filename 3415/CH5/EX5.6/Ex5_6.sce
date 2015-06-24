//fiber optic communications by joseph c. palais
//example 5.6
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
n1=1.465//core refractive index
n2=1.46//cladding refractive index
lambda=1250*10^-3//wavelength in um
//to find
a=((2.405*lambda)/(2*%pi*sqrt((n1^2)-(n2^2))))//radius of the core in um
d=a*2//core diameter in um
mprintf("Core diameter=%fum",d)
