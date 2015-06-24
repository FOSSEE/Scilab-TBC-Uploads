clc
//Initialization of variables
d=0.006 //m
U=0.01 //m/s
gaml=8000 //N/m^3
gams=7.9*10^3 *9.81
mu=13.9 
//calculations
mu= d^2 /18 *(gams - gaml)/U
RN= U*d*(gaml/9.81) /mu
//results
printf("Viscosity of oil = %.1f Ns /m^2",mu)
