clear
//
//
//

//Variable declaration
N=6.02*10**23           //Avagadro Number
n=2
rho=7860    //density(kg/m**3)
M=55.85    //atomic weight(amu)

//Calculation
a=(n*M/(rho*N))**(1/3)*10**9    //lattice constant(angstrom)

//Result
printf("\n lattice constant is %0.2f  angstrom",a)
