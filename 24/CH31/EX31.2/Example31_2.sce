//Given that
r = 0.20  //in meter
t = poly(0, 't')
B = 4.0*t^2 + 2.0*t + 3.0
E = 2.0  //in Volts
R = 2  //in Ohm

//Sample Problem 31-2a
printf("**Sample Problem 31-2a**\n")
t = 10  //in sec
flux = B*%pi*r^2/2
Et = derivat(flux)
E1 = horner(Et, t)
printf("The Emf induced is equal to %fV\n", E1)

//Sample Problem 31-2b
printf("\n**Sample Problem 31-2b**\n")
I = (E1-E)/R
printf("The induced current is equal to %fA", I)