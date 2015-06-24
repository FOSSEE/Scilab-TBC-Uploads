exec ("Gravitation.sci",-1)

//Given that
r = 6.77 * 10^6  //in meter
dr = 1.7 //in meter

//Sample Problem 3a
printf("**Sample Problem 3a**\n")
dg = -2 * G * Me * dr /(r^3)
printf("The difference in acceleration is approximately equal to  %e  m/sec*sec", dg)
