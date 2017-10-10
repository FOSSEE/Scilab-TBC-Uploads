//Chapter 10 : Crystallography and Crystal Imperfections

clear;

//Variable declaration
r=1.278               //atomic weigth              
N0=6.02*10**23        //Avagadro's No.
no=4                  //No. of atoms/cell
A=63.54               //Atomic weigth

//Calculations
a=2*sqrt(2)*r
rho=(no*A)/(N0*a**3)/10**-24

//Result
mprintf("Density of the material= %.2f gm/cc",rho)

