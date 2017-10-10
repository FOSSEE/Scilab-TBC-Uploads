
//Variable declaration
n=2;     //number of atoms
M=55.85;   //atomic weight(kg)
rho=7860;   //density(kg/m**3)
Na=6.02*10**26;    //avagadro number

//Calculation
a3=n*M/(rho*Na);
a=a3**(1/3);     //lattice constant(m)

//Result
printf('lattice constant is %0.3f  angstrom   \n',(a*10**10))