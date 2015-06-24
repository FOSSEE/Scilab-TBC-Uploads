exec('electrostatics.sci', -1)

//Given that
C = 13.5*10^-12  //in F
V = 12.5  //in Volts
x = 6.50

//Sample Problem 26-5
printf("**Sample Problem 26-5**\n")
q = C*V
Ui = q^2/(2*C)
printf("The initial stored energy is equal to %eJ\n", Ui)
C = x*C
Uf = q^2/(2*C)
printf("The energy stored after the slab is inserted is equal to %eJ", Uf)