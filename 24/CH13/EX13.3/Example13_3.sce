//Given that
M = 430  //in kg
a = 1.9  //in meter
b = 2.5  //in meter
m = 85  //in kg
g = 9.8  //in m/s^2

//Sample Problem 13-3a
printf("**Sample Problem 13-3a**\n")
Tr = M*g
//Balancing torque from the hinge
Tc = (m*g*b/2 + Tr*b)/a
printf("The magntude of force on the beam from the cable is %fN\n", Tc)

//Sample Problem 13-3b
printf("\n**Sample Problem 13-3b**\n")
Fu = Tr + m*g
Fd = Tc
printf("The magnitude of force on the beam from the hinge is %fN", sqrt(Fu^2+Fd^2))