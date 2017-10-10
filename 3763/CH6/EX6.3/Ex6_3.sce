clear
//
//
//

//Variable declaration
epsilon0=8.84*10**-12
R=0.55*10**-10    //radius(m)
N=2.7*10**25      //number of atoms

//Calculation
alpha_e=4*%pi*epsilon0*R**3    //polarisability of He(farad m**2)
epsilonr=1+(N*alpha_e/epsilon0)      //relative permittivity

//Result
printf("\n polarisability of He is %0.3f  *10**-40 farad m**2",alpha_e*10**40)
printf("\n relative permittivity is %0.6f  ",epsilonr)
printf("\n answer varies due to rounding off errors")
