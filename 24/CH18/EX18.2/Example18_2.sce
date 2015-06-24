//Given that
deltaPm = 28  //in N/m^2
density = 1.21  //in kg/m^3
f = 1000  //in Hz
v = 343  //in m/s

//Sample Problem 18-2
printf("**Sample Problem 18-2**\n")
w = 2*%pi*f
Sm = deltaPm/(v*density*w)
printf("The amplitude of sound will be %em", Sm)