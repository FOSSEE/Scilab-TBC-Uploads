//Given that
f = 12*10^6  //in Hz
R = 53*10^-2  //in m
q = 1.6*10^-19  //in C
m = 3.34*10^-27  //in kg

//Sample Problem 29-5a
printf("**Sample Problem 29-5a**\n")
B = 2*%pi*m*f/q
printf("The magnitude of magnetic field should be %fT\n", B)

//Sample Problem 29-5b
printf("\n**Sample Problem 29-5b**\n")
v = q*B*R/m
K = 0.5*m*v^2
printf("The kinetic energy of the deuteron will be %eJ", K)