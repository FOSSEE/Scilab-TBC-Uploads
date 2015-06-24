exec('electrostatics.sci', -1)

//Given that
d = 1.3  //in meter
q1 = 12*10^-9  //in C
q2 = -24*10^-9  //in C
q3 = +31*10^-9  //in C
q4 = 17*10^-9  //in C

//Sample Problem 25-3
printf("**Sample Problem 25-3**\n")
V = EPotential(q1+q2+q3+q4, d/sqrt(2))
printf("The electric potential at point P is equal to %eV", V)