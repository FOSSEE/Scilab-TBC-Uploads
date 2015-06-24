//Given that
i = 1.5  //in A
D = 3.2*10^-2  //in meter
N = 220/10^-2  //in turns/m
n = 130
d = 2.1*10^-2  //in meter
deltaT = 25*10^-3  //in s
uo = 4*%pi*10^-7  //in SI unit

//Sample Problem 31-1
printf("**Sample Problem 31-1**\n")
A = %pi*(d/2)^2
deltaPhi = uo*N*i*A
E = n*deltaPhi/deltaT
printf("The emf induced is equal to %eV", E)