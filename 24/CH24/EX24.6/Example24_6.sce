exec('electrostatics.sci', -1)

//Given that
sigmaP = 6.8*10^-6  //in C.m^2
sigmaN = 4.3*10^-6  //in C.m^2

Ep = sigmaP/(2*Eo)  //field due to positive plate
En = sigmaN/(2*Eo)  //field due to negative plate
//Sample Problem 24-6a
printf("**Sample Problem 24-6a**\n")
El = En - Ep
printf("Electric field on the left of the sheets is equal to %eN/C\n", El)

//Sample Problem 24-6b
printf("\n**Sample Problem 24-6b**\n")
Eb = En + Ep
printf("Field in between is equal to %eN/C\n", Eb)

//Sample Problem 24-6c
printf("\n**Sample Problem 24-6c**\n")
Er = -En + Ep
printf("Field in between is equal to %eN/C", Er)