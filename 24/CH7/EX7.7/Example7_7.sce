//Given that
Fa = 4.9  //in N
x1 = 12 * 10^-3  //in meter
x2 = 17 * 10^-3  //in meter
x3 = -12 * 10^-3  //in meter

//Sample Problem 7-7a
printf("**Sample Problem 7-7a**\n")
//k * x1 = Fa
//Spring constant
k = Fa/x1
Ws1 = -.5* k * x2^2
printf("The work done by the spring force is %fJ\n", Ws1)

//Sample Problem 7-7b
printf("\n**Sample Problem 7-7b**\n")
Ws2 = .5 * k * (x2^2 - x3^2)
printf("The work done by the spring is %fJ", Ws2)