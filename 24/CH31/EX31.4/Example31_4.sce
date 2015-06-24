//Given that
R = 8.5*10^-2   //in meter
Rb = 0.13  //in T/s
r = 5.2*10^-2  //in meter

//Sample Problem 31-4a
printf("**Sample Problem 31-4a**\n")
//Using Faraday's law
Rf = Rb*%pi*r^2
E = Rf/(2*%pi*r)
printf("The induced electric field is equal to %eV/m\n", E)

//Sample Problem 31-4b
printf("\n**Sample Problem 31-4b**\n")
r = 12.5*10^-2  //in meter
Rf = Rb*%pi*R^2
E = Rf/(2*%pi*r)
printf("The induced electric field is equal to %eV/m", E)