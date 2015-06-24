//Given that
r = 11.0*10^-3  //in meter
R = 5*r
Edot = 1.50*10^12  //in V/m.s
uo = 4*%pi*10^-7
Eo = 8.85*10^-12  //in C^2/N.m^2

//Sample Problem 32-3
printf("**Sample Problem 32-3**\n")
//for r=R/5
B = uo*Eo*R^2/(2*r)*Edot
printf("The magnetic field is at r=R/5 is equal to %1.2eT", B)