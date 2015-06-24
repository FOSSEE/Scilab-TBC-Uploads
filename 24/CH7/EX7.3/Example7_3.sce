//Given that
d = [-3, 0]  //in meter
F = [2, -6]  //in N

//Sample Problem 7-3a
printf("**Sample Problem 7-3a**\n")
W = F * d'
printf("The work done is equal to %dJ\n", W)

//Sample Problem 7-3b
printf("\n**Sample Problem 7-3b**\n")
Ki = 10  //in J
//Using work energy theorem
Kf = Ki + W
printf("The final kinetic energy of the crate is %dJ", Kf)