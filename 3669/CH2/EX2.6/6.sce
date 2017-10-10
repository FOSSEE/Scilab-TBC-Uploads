
//Variable declaration
n=8;     //number of atoms
a=5.62*10**-10;     //lattice constant(m)
M=72.59;   //atomic weight(kg)
Na=6.02*10**26;    //avagadro number

//Calculation
rho=n*M/(a**3*Na);   //density(kg/m**3)

//Result
printf('density is %0.3f   kg/m**3  \n',(rho))