clear
//
//
//

//Variable declaration
r=1.278*10^-8;        //atomic radius(cm)
M=63.54;         //molecular weight(g/mol)
N=6.02*10^23;      //avagadro number
n=4;     //number of atoms

//Calculations
a=4*r/sqrt(2);       //lattice constant(cm)
rho=n*M*10^3/(N*a^3);       //density(kg/m^3)

//Result
printf("\n density of copper is %0.0f kg/m^3",rho)
printf("\n answer in the book is wrong")
