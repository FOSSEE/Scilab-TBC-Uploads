clear
//
//
//

//Variable declaration
epsilon0=8.85*10**-12    
epsilonr=4        //dielectric constant
NA=6.02*10**26    //avagadro number
D=2.08*10**3      //density(kg/m**3)
M=32              //atomic weight(kg)

//Calculation
N=NA*D/M          //number of atoms
alphae=epsilon0*(epsilonr-1)/N   //polarisability(Fm**2)

//Result
