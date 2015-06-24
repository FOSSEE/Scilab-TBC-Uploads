exec('electrostatics.sci', -1)

//Given that
E = 150  //in N/C
d = -520  //in meter

//Sample Problem 25-1
printf("**Sample Problem 25-1**\n")
W = E*(-e)*d
deltaU = -W
printf("The change in potential energy is %eJ", deltaU)