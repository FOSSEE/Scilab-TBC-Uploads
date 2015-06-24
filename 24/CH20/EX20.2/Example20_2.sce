//Given that
n = 1  //in mole
T = 310  //in K
Vi = 12  //in L
Vf = 19  //in L
R = .0821  //in atm.lit/(mol.K)

//Sample Probelm 20-2
printf("**Sample Problem 20-2**\n")
W = n*R*T*log(Vf/Vi)  //in atm.lit
printf("The work done by the gas is equal to %fJ", W*1.0125*10^5*10^-3)