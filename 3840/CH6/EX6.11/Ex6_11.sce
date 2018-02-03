clear
//
//
//

//Variable declaration
N=2.7*10**25   //number of atoms
epsilon0=8.85*10**-12    
epsilonr=1.000435  //dielectric constant

//Calculation
alphae=epsilon0*(epsilonr-1)/N   //polarisability(Fm**2)

//Result
printf("\n polarisability is %0.3f  *10**-40 F-m**2",alphae*10**40)
