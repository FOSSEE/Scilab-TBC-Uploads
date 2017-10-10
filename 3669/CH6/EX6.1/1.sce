
//Variable declaration
N=3*10**28;     //number of atoms(per m**3)
alpha_e=10**-40;    //electronic polarizability(F m**2)
epsilon0=8.85*10**-12;     

//Calculation
epsilonr=(alpha_e*N/epsilon0)+1;      //dielectric constant of material

//Result
printf('dielectric constant of material is %0.3f     \n',(epsilonr))