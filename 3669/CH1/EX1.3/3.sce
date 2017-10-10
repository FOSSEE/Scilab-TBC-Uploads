
//Variable declaration
e=1.602*10**-19;   //charge of electron(c)
epsilon0=8.85*10**-12;    //permittivity(C/Nm)
r0=0.281*10**-9;     //seperation(m)
alpham=1.748;    //madelung constant
n=9;    //repulsive exponent value

//Calculation
E=-alpham*e**2*(1-(1/n))/(4*e*%pi*epsilon0*r0);      //cohesive energy(eV)

//Result
printf('cohesive energy is %0.3f  eV      \n',(E))