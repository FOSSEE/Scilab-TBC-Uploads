
//Variable declaration
epsilon0=8.85*10**-12;
epsilonr=1.000435;      //dielectric constant of material
N=2.7*10**25;    //number of atoms(per m**3)

//Calculation
alpha_e=epsilon0*(epsilonr-1)/N;     //electronic polarizability(F m**2)

//Result
printf('electronic polarizability is %0.3f   *10**-40 F m**2  \n',(alpha_e*10**40))