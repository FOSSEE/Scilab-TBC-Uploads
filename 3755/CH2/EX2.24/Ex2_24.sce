clear
//
//
//

//Variable declaration
rho=7870;       //density(kg/m^3)
M=55.8;         //molecular weight
N=6.02*10^26;      //avagadro number
n=2;     //number of atoms

//Calculations
a=(n*M/(rho*N))^(1/3);      //lattice constant(m)

//Result
printf("\n lattice constant is %0.3f angstrom",a*10^10)
