//Given that
T = 300  //in K
B = 1.5  //in T
ub = 9.27*10^-24  //in J/T
mu = 1.0*ub
K = 1.38*10^-23  //in J/K
e = 1.6*10^-19  //in coulomb

//Sample Problem 32-1
printf("**Sample Problem 32-1**\n")
K = 3/2*K*T
deltaU = 2*ub*B
printf("The average translation kinetic energy of the atoms is %1.2eeV\n", K/e)
printf("The difference between the energy of the two arrangement is %1.2eeV", deltaU/e)