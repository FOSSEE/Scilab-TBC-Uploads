
//Variable declaration
epsilon0=8.85*10**-12;
epsilonr=4;    //dielectric constant
D=2.08*10**3;    //density(kg/m**3)
Na=6.02*10**26;    //avagadro number
M=32;    //atomic weight

//Calculation
N=Na*D/M;     //number of atoms(per m**3)
alphae=epsilon0*(epsilonr-1)/N;    //atomic polarizability(F m**2)

//Result
printf('electronic polarizability is %0.3f  *10**-40 F m**2   \n',(alphae*10**40))