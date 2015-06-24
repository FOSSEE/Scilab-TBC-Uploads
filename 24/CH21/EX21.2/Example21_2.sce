//Given that
m = 1.5  //in kg
TiL = 60 + 273  //in K
TiR = 20 + 273  //in K
Tf = 40 + 273  //in K
Sc = 386  //in J/kg.K

//Sample Problem 21-2
printf("**Sample Problem 21-2**\n")
SL = m*Sc*integrate('1/T', 'T', TiL, Tf)
SR = m*Sc*integrate('1/T', 'T', TiR, Tf)
Srev = SR + SL
printf("The net entropy change in the reversible process is equal to %fJ/K", Srev)