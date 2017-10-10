clear
//
//
//

//Variable declaration
rho=6.23;       //density(gm/cc)
M=60;         //molecular weight
N=6.023*10^23;      //avagadro number
n=4;     //number of atoms

//Calculations
a=(n*M/(rho*N))^(1/3);      //lattice constant(cm)
r=a*sqrt(2)*10^8/4;          //radius of atom(angstrom)

//Result
printf("\n radius of atom is %0.3f angstrom",r)
