exec('electrostatics.sci', -1)
exec('gravitation.sci', -1)

//Given that
r = 4*10^-15  //in meter
n = 26
mp = 1.67*10^-27  //in kg

//Sample Problem 22-4a
printf("**Sample Problem 22-4a**\n")
Fpp = coulomb(e, e, r)
printf("The force of repulsion is %eN\n", Fpp)

//Sample Problem 22-4b
printf("\n**Sample Problem 22-4b**\n")
Fg = GForce(mp, mp, r)
printf("The magnitude of gravitational force between two proton is %eN", Fg)