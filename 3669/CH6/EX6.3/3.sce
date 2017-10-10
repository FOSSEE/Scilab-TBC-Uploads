
//Variable declaration
epsilon0=8.85*10**-12;
epsilonr=1.0000684;      //dielectric constant of material
N=2.7*10**25;    //number of atoms(per m**3)

//Calculation
alpha_e=epsilon0*(epsilonr-1)/N;     //electronic polarizability(F m**2)

//Result
printf('electronic polarizability is %e  F m**2   \n',alpha_e)
