//Chapter 10 : Crystallography and Crystal Imperfections

clear;

//Variable declaration
rho=7.86*10**3        //density of material
n=2                   //No. of atoms/cell
A=55.85               //Atomic weigth
No=6.023*10**26       //Avagadro's No.

//Calculations
a=((n*A)/(No*rho))**(1/3)/10**-10

//Result
mprintf("Lattice parameter a= %.5f*10**-10 m",a)

