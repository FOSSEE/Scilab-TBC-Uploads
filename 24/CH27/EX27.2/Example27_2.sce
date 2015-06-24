//Given that
R = 2*10^-3  //in meter
J = 2*10^5  //in A/m^2

//Sample Problem 27-2a
printf("**Sample Problem 27-2a**\n")
//As current density is uniform
A = %pi*(R^2 - (R/2)^2)
I = J*A
printf("The current flowing through the outer portion is %fA\n", I)

//Sample Problem 27-2b
printf("\n**Sample Problem 27-2b**\n")
a = 3*10^11  //in SI unit
Iv = integrate('a*r^2*2*%pi*r', 'r', R/2, R)
printf("Now the current will be %fA", Iv)