exec ("Gravitation.sci",-1)

//variavles with their values
Mh = 1.99 * 10^31   //in kg
R = 6.77 * 10^6 //in meter
DR = 1.7 //in meter

//Sample Problem 3b
printf("**Sample Problem 3b**\n")
//the difference in gravitational acceleration is given by
DG = -2 * G * Mh * DR /(R^3)
printf("The difference in acceleration is approximately equal to  %em/s^2", DG)