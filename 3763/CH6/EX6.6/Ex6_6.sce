clear
//
//
//

//Variable declaration
epsilonr=4.36      //dielectric constant
t=2.8*10**-2       //loss tangent(t)
N=4*10**28         //number of electrons
epsilon0=8.84*10**-12      

//Calculation
epsilon_r = epsilonr*t
epsilonstar = (complex(epsilonr,-epsilon_r))
alphastar = (epsilonstar-1)/(epsilonstar+2)
alpha_star = 3*epsilon0*alphastar/N             //complex polarizability(Fm**2)

//Result
printf("\n the complex polarizability is %0.3f  *10**-40 F-m**2",alpha_star*10**40)
printf("\n answer cant be rouned off to 2 decimals as given in the textbook. Since it is a complex number and complex cant be converted to ")
