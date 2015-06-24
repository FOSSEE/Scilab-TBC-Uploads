exec('electrostatics.sci', -1)
exec('degree_rad.sci', -1)

//Given that
q1 = 1.60*10^-19  //in C
q2 = 3.20*10^-19  //in C
R = 0.0200  //in meter

//Sample Problem 22-1a
printf("**Sample Problem 22-1a**\n")
F12 = coulomb(q1, q2, R)
printf("The coulombic force between the charged particle is %eN\n", F12)

//Sample Problem 22-1b
printf("\n**Sample Problem 22-1b**\n")
q3 = -3.20*10^-19  //in C
R13 = 3/4*R
F1 = coulomb(q1, q3, R13) + F12
printf("The net force on particle 1 is equal to %eN\n", abs(F1))

//Sample Problem 22-1c
printf("\n**Sample Problem 22-1c**\n")
q4 = -3.20*10^-19  //in C
R14 = 3/4*R
theta = dtor(60)
F14 = coulomb(q1, q4, R14)
F1net = [F12+F14*cos(theta), F14*sin(theta)]
printf("The net force on particle 1 is equal to %eN", norm(F1net))