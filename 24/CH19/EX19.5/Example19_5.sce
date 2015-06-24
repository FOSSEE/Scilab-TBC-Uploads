//Given that
M = 1.00  //in kg
T = 100  //in degree C
P = 1.01*10^5  //in Pascal
Vi = 1.00*10^-3  //in m^3
Vf = 1.671  //in m^3
Lv = 2256*10^3  //in J/kg

//Sample Problem 19-5a
printf("**Sample Problem 19-5a**\n")
W = P*(Vf - Vi)
printf("The work done by the system during the process is %fkJ\n", W*10^-3)

//Sample Problem 19-5b
printf("\n**Sample Problem 19-5b**\n")
Q = Lv*M
printf("The heat supplied to the system is equal to %eJ\n", Q)

//Sample Problem 19-5c
printf("\n**Sample Problem 19-5c**\n")
deltaE = Q - W
printf("The change in internal energy is equal to %eJ", deltaE)