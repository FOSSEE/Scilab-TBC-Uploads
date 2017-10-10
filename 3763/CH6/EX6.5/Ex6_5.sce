clear
//
//
//

//Variable declaration
d=0.08*10**-3    //thickness(m)
A=8*10**-4    //area(m**2)
epsilonr=2.56
epsilon0=8.84*10**-12
tan_delta=0.7*10**-4
new=10**6    //frequency(Hz)

//Calculation
C=A*epsilon0*epsilonr/d     //capacitance(farad)
epsilonrdash=tan_delta*epsilonr
omega=2*%pi*new
R=d/(epsilon0*epsilonrdash*omega*A)     //parallel loss resistance(ohm)

//Result
printf("\n capacitance is %0.1f  *10**-12 farad",C*10**12)
printf("\n parallel loss resistance is %0.0f  mega ohm",R/10**6)
