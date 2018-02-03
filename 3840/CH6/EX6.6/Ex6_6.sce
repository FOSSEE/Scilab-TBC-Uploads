clear
//
//
//

//Variable declaration
epsilonr=3.75       //relative dielectric constant
gama=1/3     //internal field constant
D=2050       //density(kg/m**3)
M=32         //atomic weight(amu)
Na=6.02*10**26     //avagadro number
epsilon0=8.85*10**-12    

//Calculation
N=Na*D/M     //number of atoms per m**3
x=(epsilonr-1)/(epsilonr+2)
alpha_e=x*3*epsilon0/N     //electronic polarisability(F-m**2)

//Result
printf("\n electronic polarisability is %0.2f  *10**-40 Fm**2",alpha_e*10**40)
printf("\n answer in the book varies due to rounding off errors")
