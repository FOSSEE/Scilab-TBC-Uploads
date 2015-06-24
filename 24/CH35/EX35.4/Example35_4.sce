//Given that
L= 10  //in cm
f1 = 24  //in cm
f2 = 9  //in cm
xo = -6  //in cm

//Sample Problem 35-4
printf("**Sample Problem 35-4**\n")
xi1 = xo*f1/(xo+f1)
xo2 = xi1 - L
xi2 = xo2*f2/(xo2+f2)
printf("The final image will be at a distance of %dcm from the second mirror", xi2)