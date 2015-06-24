exec ("Gravitation.sci",-1)

//Given that
m = 7.20 //in kg
h = 350 * 10^3 //altitude in meter

//Sample Problem 8a
printf("**Sample Problem 8a**\n")
//mechanical energy E = K + U
//E = - G * M * m /(2* r)
E = .5*GPotential(m,Me,(h+Re))
printf("The total energy at the given altitude is %e joule\n",E)


//Sample Problem 8b
printf("\n**Sample Problem 8b**\n")
//here the k = 0
E0 = GPotential(m,Me,Re)
printf("The total energy on the launchpad is %e joule\n",E0)
deltaE = E - E0;
printf("The differencein both the energy %e joule",deltaE)