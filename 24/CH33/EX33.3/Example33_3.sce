//Given that
L = 12*10^-3  //in H
C = 1.6*10^-6  //in F
R = 1.5  //in ohm

//Sample Problem 33-3a
printf("**Sample Probelm 33-3a**\n")
//Q/2 = Q*e^(-R*t/(2*L))
t = -2*L/R*log(0.50)
printf("At time t=%1.2esec, the amplitude of charge oscillation is half of the maximum value\n", t)

//Sample Problem 33-3b
printf("\n**Sample Probelm 33-3b**\n")
w = 1/sqrt(L*C)
T = (2*%pi)/w
n = t/T
printf("The number of oscillation are %1.2f till t=%1.2e", n, T)