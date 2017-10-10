clear
//
//
//

//Variable declaration
rho=2.48;       //density(gm/cc)
M=58;         //molecular weight
N=6.023*10^23;      //avagadro number
n=4;     //number of atoms

//Calculations
a=(n*M/(rho*N))^(1/3);      //lattice constant(cm)
r=a*sqrt(2)*10^8/4;          //radius of atom(angstrom)
d=2*r;         //distance between ions(angstrom)

//Result
printf("\n distance between ions is %0.1f angstrom",d)
