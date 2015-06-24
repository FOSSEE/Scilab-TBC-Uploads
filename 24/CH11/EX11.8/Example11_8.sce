//Given that
M = 80  //in kg
d1 = 0.30  //in meter
alpha = 6  //in rad/s^2
I = 15  //in kg.m^2
g = 9.8  //in m/s^2

//Sample Problem 11-8a
printf("**Sample Problem 11-8a**\n")
F = I*alpha/d1
printf("The magnitude of F is %fN\n", F)

//Sample Problem 11-8b
printf("\n**Sample Problem 11-8b**\n")
d2 = 0.12  //in meter
//F*d1 - M*g*d2 = I*alpha
F = I*alpha + M*g*d2
F = F/d1
printf("The magnitude of F in second case is %fN", F)