//Given that
E = 7  //in ev
V = 2*10^-9  //in m^3
density = 2*10^28  //in m^3/ev
deltaE = 3*10^-3  //in ev

//Sample Problem 42-3a
printf("**Sample Problem 42-3a**\n")
n = density*V
printf("The number of states are equal to %1.2e per ev\n", n)

//Sample Problem 42-3b
printf("\n**Sample Problem 42-3b**\n")
n = n*deltaE
printf("The number of states are equal to %1.2e per ev\n", n)