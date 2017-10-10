
//Variable declaration
epsilon0=8.85*10**-12;
epsilonr=3.75;    //dielectric constant
gama=1/3;     //internal field constant
D=2050;    //density(kg/m**3)
Na=6.02*10**26;    //avagadro number
M=32;    //atomic weight

//Calculation
N=Na*D/M;     //number of atoms(per m**3)
alphae=((epsilonr-1)/(epsilonr+2))*3*epsilon0/N;    //electronic polarizability(F m**2)

//Result
printf('electronic polarizability is %0.3f  *10**-40 F m**2   \n',(alphae*10**40))
printf('answer varies due to approximating off errors\n')