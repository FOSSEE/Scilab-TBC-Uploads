//Given that
n = 1  //in mol
Vi = 1  //(say)
Vf = 2*Vi
R = 8.31  //in J/mol.K
T = 1  //(say)

//Sample Problem 21-1
printf("**Sample Problem 21-1**\n")
Q = n*R*T*log(Vf/Vi)
deltaS = Q/T
printf("The change in entropy for the irreversible process is equal to %fJ/K", deltaS)