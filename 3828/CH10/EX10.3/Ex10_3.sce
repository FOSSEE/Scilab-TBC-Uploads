//Chapter 10 : Crystallography and Crystal Imperfections

clear;

//Variable declaration
M=58.5                //formula weigth
rho=2180              //density of material
n=4                   //No. of atoms/cell              
No=6.02*10**26        //Avagadro's No.

//Calculations
a=((n*M)/(No*rho))**(1/3)/10**-10/2

//Result
mprintf("Distance between like atoms a= %.5f*10**-10 m",2*a)
mprintf("\nDistance between adjacent atoms a/2= %.2f*10**-10 m",a)

