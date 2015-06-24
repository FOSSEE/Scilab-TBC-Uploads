//Given that
e = 1.6*10^-19  //in C
Re = 1.69*10^-8  //in Ohm.m
n = 8.49*10^28
m = 9.1*10^-31  //mass of electron in kg
Veff = 1.6*10^6  //in m/s

//Sample Problem 27-5a
printf("**Sample Problem 27-5a**\n")
//resistivity = m/(n*e^2*t)
t = m/(n*e^2*Re)
printf("The mean free time between two collision is %es\n", t)

//Sample Problem 27-5b
printf("\n**Sample Problem 27-5b**\n")
lambda = Veff*t
printf("The mean free path is equal to %em", lambda)