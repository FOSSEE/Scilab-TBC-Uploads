//Given that
R = 200  //in ohm
C = 15*10^-6  //in F
L = 230*10^-3  //in H
Em = 36.0  //in volts
fd = 60.0  //in Hz

//Sample Problem 33-7a
printf("**Sample Problem 33-7a**\n")
w = 2*%pi*fd
Xl = w*L
Xc = 1/(w*C)
Z = sqrt(R^2 + (Xl - Xc)^2)
Imax = Em/Z
printf("The amplitude of current in the circuit is %1.2fA, Imax\n", Imax)

//Sample Problem 33-7b
printf("\n**Sample Problem 33-7a**\n")
phi = atan((Xl-Xc)/R)
printf("The phase constant is equal to %fdegrees", phi)