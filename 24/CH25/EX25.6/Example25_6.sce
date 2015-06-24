exec('electrostatics.sci', -1)

//Given that
d = 12*10^-2  //in cm
q = 150*10^-9   //in C
q1 = +q
q2 = -4*q
q3 = +2*q

//Sample Problem 25-6
printf("**Sample Problem 25-6**\n")
U = EPotential(q1, d)*q2 + EPotential(q2, d)*q3 + EPotential(q3, d)*q1
printf("The electric potential energy of the system is equal to %eJ", U)