//Chapter 3, Exmaple 11, page 107
//Find the absorption coefficient
clc
clear
// Using equation 3.20
x = 20
I0 = 6
Mu = -1/x*log(1/I0)
printf("\nLiquid photon absorption coefficient cm^-1 = %e ",Mu)

//Answer may vary due to round off error 
