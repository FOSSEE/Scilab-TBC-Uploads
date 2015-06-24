exec('electrostatics.sci', -1)

//Given that
n = 12
qT = -n*e
R = 1  //(say)

//Sample Problem 25-4a
printf("**Sample Problem 25-4a**\n")
V = EPotential(qT, R)
printf("The electric potential at the center is equal to %e/R Volts", V)

//Sample Problem 25-4b
printf("**Sample Problem 25-4b**\n")
printf("It does not change in this configuration")