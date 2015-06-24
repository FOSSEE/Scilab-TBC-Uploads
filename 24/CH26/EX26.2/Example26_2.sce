exec('electrostatics.sci', -1)

//Given that
C1 = 12  //in uF
C2 = 5.30  //in uF
C3 = 4.50  //in uF
V = 12.5  //in Volts

//Sample Problem 26-2a
printf("**Sample Problem 26-2a**\n")
C12 = C1 + C2  //in series
C123 = C12*C3/(C12 + C3)  //in parallel
printf("The equivalent capacitance for the given circuit is %fuF\n", C123)

//Sample Problem 26-2b
printf("\n**Sample Problem 26-2b**\n")
Q123 = C123*V
Q12 = Q123  //in series
Q1 = Q12*C1/(C1+C2)
printf("The charge on the capacitor C1 is equal to %fuC", Q1)