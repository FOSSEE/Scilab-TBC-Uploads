clear
//
//
//

//Variable declaration
n=2             //number of atoms per unit cell
M=55.85         //atomic weight(amu)
N=6.02*10**23   //avagadro number(kg/m**3)
rho=7860        //density(kg/m**3)    

//Calculation 
a=(n*M/(rho*N))**(1/3)     //lattice constant(m)    

//Result
printf("\n lattice constant is %0.4f  angstrom",a*10**8)
