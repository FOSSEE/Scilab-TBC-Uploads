////
//Varialble Declaration
gama = 71.99e-3   //Surface tension of water, N/m
r = 1.2e-4        //Radius of hemisphere, m
theta = 0.0       //Contact angle, rad

//Calculations
DP = 2*gama*cos(theta)/r
F = DP*%pi*r**2

//Results
printf("\n Force exerted by one leg %5.3e N",F)

