//Given that
r = 3.5  //in meter
P = 1.5  //in W
phi = 2.2  //in ev
conv = 1.6*10^-19  //ev to Joule to conversion factor
R = 5.0*10^-11  //in meter

//Sample Problem 39-2
printf("**Sample Problem 39-2**\n")
I = P/(4*%pi*r^2)
A = %pi*R^2
deltaT = phi*conv/(I*A)
printf("The time taken in ejecting electron is %ds", deltaT)