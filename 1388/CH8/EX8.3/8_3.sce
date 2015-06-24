clc
//initialisation of variables
h= 6.6234*10^-27 //ergs sec
m= 2.59 //gms
v= 3.35*10^4 //cm sec ^-1
e= 4.8*10^-10 //ev
V= 40000 //volts
M= 300 //gms
L= 1836 //A
N= 6*10^23 //molecules
//CALCULATIONS
p= m*v
l= h/p
E= V*e/M
P= sqrt(2*E*(1/(L*N)))
L1= h*10^8/P
//RESULTS
printf (' wavelength = %.2e cm',l)
printf (' \n wavelength = %.4f cm',L1)
