
clc
//Initialization of variables
s=2.7
gamw=9810 //N/m^3
mu=0.001 //Ns/m^2
d=0.15*10^-3 //m
rho=1000 //kg/m^3
//calculations
gams=s*gamw
U= d^2 *(gams-gamw)/(18*mu)
RN= U*d*rho/mu
Cd = (1+ 3/16 *RN)^0.5 *(24/RN)
U22 = 4/3 *d*(gams-gamw) /(Cd*rho)
U2=sqrt(U22)
//results
printf("Settling velocity of sand in case 1  = %.2f m/s",U)
printf("\n Settling velocity of sand in case 2 = %.4f m/s",U2)
//The answer is a bit different due to rounding off error.
