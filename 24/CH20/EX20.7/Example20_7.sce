//Given that
n = 5.00  //in mol
deltaT = 20
R = 8.31  //in J/mol.K

//Sample Problem 20-7a
printf("**Sample Problem 20-7a**\n")
//For Helium
Cv = 3/2*R
Cp = Cv + R
Q = n*Cp*deltaT
printf("The heat added to the bubble is equal to %fJ\n", Q)

//Sample Problem 20-7b
printf("\n**Sample Problem 20-7b**\n")
deltaEint = n*Cv*deltaT
printf("The change in internal energy is equal to %fJ\n", deltaEint)

//Sample Problem 20-7c
printf("\n**Sample Problem 20-7c**\n")
W = Q - deltaEint
printf("The work done by the system is equal to %fJ", W)