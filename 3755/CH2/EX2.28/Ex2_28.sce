clear
//
//
//

//Variable declaration
rho=5.96;       //density(gm/cc)
M=50;         //molecular weight
N=6.023*10^23;      //avagadro number
n=2;     //number of atoms

//Calculations
a=(n*M/(rho*N))^(1/3);      //lattice constant(cm)
r=a*sqrt(3)/4;          //radius of atom(angstrom)
pf=n*(4/3)*%pi*r^3/a^3;      //packing factor

//Result
printf("\n packing factor is %0.2f ",pf)
