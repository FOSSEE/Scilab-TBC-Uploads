exec('electrostatics.sci', -1)

//Given that
lambda = -1*10^-3  //in C/m
Eb = 3*10^6  //in N/C

//Sample Problem 24-5
printf("**Sample Problem 24-5**\n")
r = lambda/(2*%pi*Eo*Eb)
printf("The radius of the column is equal to %fm", abs(r))