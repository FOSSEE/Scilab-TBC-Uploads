exec('electrostatics.sci', -1)

//Given that
C = 55*10^-15  //in F
V = 5.3  //in V

//Sample Problem 26-1
printf("**Sample Problem 26-1**\n")
Q = C*V
n = Q/e
printf("The number of excess electron is equal to %e", n)