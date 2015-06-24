//Given that
Vi = 12  //in L
Ti = 20+273  //in K
Pi = 15  //in atm
Tf = 35+273  //in K
Vf = 8.5  //in L
R = .0821  //in atm.lit/(mol.K)

//Sample Problem 20-1
printf("**Sample Problem 20-1**\n")
Pf = (Pi*Vi/(R*Ti))/(Vf/(R*Tf))
printf("The final pressure of the gas is %fatm", Pf)