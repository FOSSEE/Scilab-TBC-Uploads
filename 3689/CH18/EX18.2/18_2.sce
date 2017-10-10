////
//Variable Declaration
Ca0 = list(2.3e-4,4.6e-4,9.2e-4)       //Initial Concentration of A, M
Cb0 = list(3.1e-5,6.2e-5,6.2e-5)       //Initial Concentration of B, M
Ri  = list(5.25e-4,4.2e-3,1.68e-2)     //Initial rate of reaction, M

//Calculations
alp = log(Ri(2)/Ri(3))/log(Ca0(2)/Ca0(3))
beta = (log(Ri(1)/Ri(2)) - 2*log((Ca0(1)/Ca0(2))))/(log(Cb0(1)/Cb0(2)))
k = Ri(3)/(Ca0(3)**2*Cb0(3)**beta)

//REsults
printf("\n Order of reaction with respect to reactant A: %3.2f",alp)

printf("\n Order of reaction with respect to reactant A: %3.2f",beta)

printf("\n Rate constant of the reaction: %4.3e 1./(M.s)",k)

