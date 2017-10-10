clear
//
//
//

//Variable declaration
rho=8.96;       //density(gm/cc)
M=63.5;         //molecular weight
N=6.02*10^23;      //avagadro number
n=4;     //number of atoms

//Calculations
a=(n*M/(rho*N))^(1/3);      //lattice constant(cm)
d=a/sqrt(2)*10^8;      //distance between ions(angstrom)

//Result
printf("\n distance between ions is %0.2f angstrom",d)
