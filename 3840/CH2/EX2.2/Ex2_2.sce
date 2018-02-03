clear
//
//
//

//Variable declaration
N=6.02*10**26           //Avagadro Number
n=2
rho=530    //density(kg/m**3)
M=6.94     //atomic weight(amu)

//Calculation
a=(n*M/(rho*N))**(1/3)*10**10    //lattice constant(angstrom)

//Result
printf("\n lattice constant is %0.3f  angstrom",a)
