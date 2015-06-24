//Ex14_2 Pg-695
clc

n1=1.53 //core refracrive index
n2=1.5 //cladding refractive index
lamda=10^(-6) //cut-off wavelength
a=50*10^(-6) //core radius in m


V=(2*%pi*a*sqrt(n1^2-n2^2))/lamda //normalised frequency
printf("Normalised frequency = %.2f \n",V)

ms=V^2/2 //total number of guided mode
printf("Total number of guided mode = %.0f",ms)
