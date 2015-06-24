exec('degree_rad.sci', -1)

//Given that
P = 6.2*10^-30  //in C.m

//Sample Problem 23-5a
printf("**Sample Problem 23-5a**\n")
q = 10*e
l = P/q
printf("The effective ditance between the positive & negative center is %em\n", l)

//Sample Problem 23-5b
printf("\n**Sample Problem 23-5b**\n")
E = 1.5*10^4  //in N/C
T = 2*E*q*l/2
printf("The net torque on the dipole is %eN.m\n", T)

//Sample Problem 23-5c
printf("\n**Sample Problem 23-5c**\n")
W = -(P*E*(cos(dtor(180)) - cos(0)))
printf("The work done by the external agent is equal to %eJ", W)