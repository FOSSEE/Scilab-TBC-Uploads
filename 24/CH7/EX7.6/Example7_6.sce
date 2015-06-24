//Given that
g = 9.8  //in m/s^2
m = 500  //in kg
Vi = 4  //in m/s
a = g/5  //in m/s
d = 12  //in meter

//Sample Problem 7-6a
printf("**Sample Problem 7-6a**\n")
//Using the definition of the work done
Wg = m * g * d
printf("The work done by the gravity during the fall is %eJ\n", Wg)

//Sample Problem 7-6b
printf("\n**Sample Problem 7-6b**\n")
//from Example7-6_FBD
//m*g - T = m*a
T = m * (g - a)
Wt = - T * d
printf("The work done by the tension is %eJ\n", Wt)

//Sample Problem 7-6c
printf("\n*Sample Problem 7-6c**\n")
Wnet = Wt + Wg
printf("The net work done is %eJ\n", Wnet)

//Sample Problem 7-6d
printf("\n**Sample Problem 7-6d**\n")
//Using work energy theorem
//Kf - Ki = Wnet
Kf = Wnet + .5 * m * Vi^2
printf("The final kinetic energy of the cab is %eJ", Kf)