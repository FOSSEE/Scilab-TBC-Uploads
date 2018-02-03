clear
//
//
//

//Variable declaration
epsilonr=1.0000684     //dielectric constant
N=2.7*10**25   //number of atoms
epsilon0=8.85*10**-12    

//Calculation
alpha_e=epsilon0*(epsilonr-1)/N    //polarisability(Fm**2)

//Result
printf("\n polarisability is %e  Fm**2",alpha_e)
