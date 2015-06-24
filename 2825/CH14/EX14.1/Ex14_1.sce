//Ex14_1 Pg-695
clc

n1=1.545 //core refracrive index
n2=1.510 //cladding refractive index
d=3*10^(-6) //diamter of optical fiber in m

a=d/2 //core radius in m
del=(n1-n2)/n1 //fractional difference of refractive indices
lamda_c=(2*%pi*a*n1*sqrt(2*del))/2.405 //cut-off wavelength
printf("Cut-off wavelength = %.2f um",lamda_c*1e6)
