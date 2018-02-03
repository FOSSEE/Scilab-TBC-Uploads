clear
//
//
//

//Variable declaration
n=2             //number of atoms per unit cell
M=6.94         //atomic weight(amu)
N=6.02*10**26   //avagadro number(kg/mol)
rho=530        //density(kg/m**3)    

//Calculation 
a=(n*M/(rho*N))**(1/3)     //lattice constant(m)    

//Result
printf("\n lattice constant is %0.3f  angstrom",a*10**10)
printf("\n answer given in the book varies due to rounding off errors")
