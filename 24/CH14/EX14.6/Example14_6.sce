exec ("Gravitation.sci",-1)

//Given that
T = 76 * 365 * 24 * 60 * 60 //time period in seconds (converting from years)

//Sample Problem 6a
printf("**Sample Problem 6a**\n")
//We know that Ra + Re  = 2*a
Rp = 8.9 * 10^10 //in meter
a = KeplerRadius(Ms,T)
//therefore
Ra = 2*a -Rp //in meter
printf("The Aphelion distance is equal to %em\n", Ra)

//Sample Problem 6b
printf("\n**Sample Problem 6b**\n")
//we know that e*a = a - Rp
e = 1 - Rp/a
printf("The eccentricity of the path is %e ", e)