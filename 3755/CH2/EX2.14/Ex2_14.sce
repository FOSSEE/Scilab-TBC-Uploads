clear
//
//
//

//Variable declaration    
M=63.5;     //atomic weight(gm/mol)
N=6.023*10^23;      //avagadro number
r=1.278*10^-8;     //atomic radius(cm)
n=4;

//Calculations
m=M/N;           //mass(g)
a=4*r/sqrt(2);      //lattice constant(cm)
V=a^3;          //volume(m^3)
rho=n*m/V;       //density of crystal(g/cm^3)

//Result
printf("\n density of crystal is %0.3f gm/cm^3",rho)
