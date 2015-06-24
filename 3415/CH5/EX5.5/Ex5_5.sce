//fiber optic communications by joseph c. palais
//example 5.5
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
d=50//core diameter in um
a=d/2//core radius in um
n1=1.48//core refractive index
n2=1.46//cladding refractive index
lambda=0.82//wavelength in um
//to find
V=((2*%pi*a*sqrt((n1^2)-(n2^2)))/lambda)// V number
n=(V^2/2)//number of modes
mprintf("Number of modes=%i",n)
