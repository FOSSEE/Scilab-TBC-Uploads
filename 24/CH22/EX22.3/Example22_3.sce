exec('electrostatics.sci', -1)

//Given that
Q = 1  //(say)
q1 = Q
q2 = 0
a = 1  //(say)

//Sample Problem 22-3a
printf("**Sample Problem 22-3a**\n")
q1 = (q1 + q2)/2
q2 = q1
F = coulomb(q1, q2, a)
printf("The net force between the two sphere is %eQ^2/a^2\n", F)


//Sample Problem 22-3b
printf("\n**Sample Problem 22-3b**\n")
q1 = 0
F = coulomb(q1, q2, a)
printf("The net force between the two sphere is %fN", F)