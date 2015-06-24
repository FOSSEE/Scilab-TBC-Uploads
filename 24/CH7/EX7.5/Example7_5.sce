//Given that
mass = 15  //in kg
L = 5.7  //in meter
h = 2.5  //in meter
g = 9.8

//Sample Problem 7-5a
printf("**Sample Problem 7-5a**\n")
//Using the definition of work done
Wg = - mass * g * h
printf("The work done by the gravity is during the pull is %eJ\n", Wg)

//Sample Problem 7-5b
printf("\n**Sample Problem 7-5b**\n")
//Using Work-Energy theorem
//as there is no change in kinetic energy
Wt = - Wg
printf("The work done by the tension during the pull is %eJ", Wt)