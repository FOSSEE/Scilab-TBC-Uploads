exec('electrostatics.sci', -1)

//Given that
R = 6.85*10^-2  //in m
q = 1.25*10^-9  //in C

//Sample Problem 26-4a
printf("**Sample Problem 26-4a**\n")
C = 4*%pi*Eo*R
U = q^2/(2*C)
printf("The electric energy stored is equal to %eJ\n", U)

//Sample Problem 26-4b
printf("\n**Sample Problem 26-4b**\n")
E = coulomb(q, 1, R)
u = 1/2*Eo*E^2
printf("The energy density is equal to %eJ/m^3", u)