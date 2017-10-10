clear
//
//
//

//Variable declaration    
a1=5.43*10^-8;    //lattice constant(cm)
M1=28.1;         //atomic weight
N=6.023*10^23;      //avagadro number
n1=8;     //number of atoms
a2=5.65*10^-8;    //lattice constant(cm)
M2=144.6;         //atomic weight
n2=4;     //number of atoms

//Calculations
rho1=n1*M1/(N*a1^3);    //density of Si(gm/cm^3)
rho2=n2*M2/(N*a2^3);    //density of GaAs(gm/cm^3)

//Result"
printf("\n density of Si is %0.2f gm/cm^3",rho1)
printf("\n density of GaAs is %0.3f gm/cm^3",rho2)
printf("\n answer in the book varies due to rounding off errors")
