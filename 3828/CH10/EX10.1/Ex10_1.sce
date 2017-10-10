//Chapter 10 : Crystallography and Crystal Imperfections

clear;

//Variable declaration
rho=10.6              //density of material
n=4                   //No. of atoms/cell
A=108                 //Atomic weigth
No=6.023*10**23       //Avagadro's No.

//Calculations
a=((n*A)/(No*rho))**(1/3)/10**-8

//Result
mprintf("Lattice parameter a= %.5f*10**-8 cm",a)

