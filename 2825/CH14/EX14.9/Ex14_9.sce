//Ex14_9 Pg-698
clc

n1=1.45 //core refracrive index
NA=0.16//cladding refractive index
lamda=0.9*10^(-6) //cut-off wavelength
d=60/100 //core radius in m


V=(%pi*d*NA)/lamda //normalised frequency
printf("Normalised frequency = %.2f*1e5 \n",V*1e-5)
