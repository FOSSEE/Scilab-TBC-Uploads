//Given that
R = 8.31  //in J/mol.K
Na = 6.023*10^23  //in /mol
K = R/Na

//Sample Problem 20-4a
printf("**Sample Problem 20-4a**\n")
T = 300  //in K
P = 1*1.0125*10^5  //in pa
d = 290*10^-12  //in meter
lambda = K*T/(sqrt(2)*%pi*d^2*P)
printf("The mean free path is equal to %em\n", lambda)

//Sample Problem 20-4b
printf("\n**Sample Problem 20-4b**\n")
v = 450  //in m/s
t = lambda/v
printf("The time between two collisions is %esec\n", t)
f = 1/t
printf("The frequency of collision is %eHz", f)