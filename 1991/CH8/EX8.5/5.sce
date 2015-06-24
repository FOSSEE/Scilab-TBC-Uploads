clc
clear
//input
n=10 //number of rounds
B=2*10^-2 //flux density
a=5*10^-4 //areaof cross section
t=10//time
//calculation
c=n*B*a //change in flux
emf=c/t //induced emf
//output
printf("the flux changed is  %3.3e Wb ",c)
printf("\n the induced emf is %3.3e V",emf)
