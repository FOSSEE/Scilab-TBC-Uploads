//Chapter 10 : Crystallography and Crystal Imperfections

clear;

//Variable declaration
M=58.45               //formula weigth
rho=2.17*10**3        //density of material
n=4                   //No. of atoms/cell              
No=6*10**26           //Avagadro's No.

//Calculations
a=((n*M)/(No*rho))**(1/3)/10**-10

//Result
mprintf("Lattice constant a= %.3f*10**-10 m",a)
