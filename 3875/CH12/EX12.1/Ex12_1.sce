clc;
clear;
m=1.67*10^-27 //mass of particle in kPP
L=0.1*10^-9 //width in nm
n=3 //quantum number
h=6.63*10^-34 //Plancks constant in J-s

//calculation
//(1)
E=(n^2*h^2)/(8*m*L^2) 
mprintf("The energy of the particle is = %2.2e Joules\n",E)
//The answer provided in the textbook is wrong.

//(2)
lambda=(2*L)/n
p=h/lambda
mprintf("The momentum of the particle is = %1.2e kg-ms^-1\n",p)

//(3)
P=((1/L)*(L/3)) //after integration
mprintf("The probability of finding particle between x=0 and x=L/3 is = %f",P)
