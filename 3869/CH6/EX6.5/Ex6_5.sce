clear
//
//
//

//Variable declaration
n=8             //number of atoms per unit cell
a=5.6*10**-10   //lattice constant(m)
M=710.59        //atomic weight(amu)
N=6.02*10**26   //avagadro number(kg/mol)

//Calculation
rho=n*M/(a**3*N)     //density(kg/m**3)    

//Result
printf("\n density is %0.0f  kg/m**3",rho)
