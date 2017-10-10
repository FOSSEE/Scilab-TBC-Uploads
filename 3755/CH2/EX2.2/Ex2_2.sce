clear
//
//
//

//Variable declaration    
M=55.85;     //atomic weight
N=6.023*10^23;      //avagadro number
a=2.9*10^-8;      //lattice constant(m)
rho=7.87;       //volume density(gm/cc)

//Calculations
n=rho*N*a^3/M;       //number of atoms per unit cell

//Result
printf("\n number of atoms per unit cell is %0.3f ",n)
printf("\n the lattice is BCC")
