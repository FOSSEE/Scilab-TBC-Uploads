//Given that
K = 3.0*10^20*1.6*10^-19  //in J
Mp = 1.67*10^-27  //in kg
c = 3*10^8  //in m/s
conv = 9.46*10^15  //conversion factor from light year to sec
D = 9.8*10^4  //in light year

//Sample Problem 38-7a
printf("**Sample Problem 38-7a**\n")
Erm = (Mp*c^2)
y = (K + Erm)/Erm
r = sqrt(1 - (1/y)^2)
printf("The velocity is approximately equal to %1.2f*c\n", r)

//Sample Problem 38-7b
printf("\n**Sample Problem 38-7b**\n")
deltaT = D  //in year
printf("The time taken is %1.1ey\n", deltaT)

//Sample Problem 38-7c
printf("\n**Sample Problem 38-7c**\n")
deltaTp = deltaT/y * 365*24*3600
printf("The time taken in reference frame of proton is %1.2fs", deltaTp)