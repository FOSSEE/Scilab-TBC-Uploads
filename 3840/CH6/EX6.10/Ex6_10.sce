clear
//
//
//

//Variable declaration
N=3*10**25   //number of atoms
epsilon0=8.85*10**-12    
r=0.2*10**-9 //radius(m)   
E=1          //field

//Calculation
p=4*%pi*epsilon0*r**3        //dipole moment per unit electric field(F-m**2)
P=N*p                            //polarisation(C-m)
epsilonr=1+(4*%pi*r**3*N/E)  //dielectric constant
alphae=epsilon0*(epsilonr-1)/N   //polarisability(Fm**2)

//Result
