clc
//Initialization of variables
T=298  //K
m=32*1.66054*10^-27 //kg
k=1.38066*10^-23 //j/k
V=10^-4 //m^3
h=6.62608*10^-34 //J/s
//calculations
q=(2*%pi*m*k*T)^1.5 *V/h^3 
//results
printf("Translational partition function = %.2e",q)
