clc//
//
//

//Variable declaration
A=1.748;       //madelung constant
n=9;     //born repulsive exponent
e=1.602*10^-19;   //charge of electron(c)
epsilon0=8.85*10^-12;    //permittivity(C/Nm)
r0=0.281*10^-9;     //seperation(m)
IE=5.14;     //ionisation energy of A(kJ/mol)
EA=3.61;    //electron affinity for B(kJ/mol)

//Calculation
CE=A*e^2*(1-(1/n))/(4*%pi*epsilon0*r0*e);      //cohesive energy(eV)

//Result
printf("\n cohesive energy is %0.3f eV",CE)
