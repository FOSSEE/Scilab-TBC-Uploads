clear
//
//
//

//Variable declaration    
rho=6250;       //density(kg/m^3)
M=60.2;         //molecular weight
N=6.02*10^26;      //avagadro number
n=4;     //number of atoms

//Calculations
a=(n*M/(rho*N))^(1/3);       //lattice constant(m)

//Result
printf("\n lattice constant is %0.0f angstrom",a*10^10)
