//Given that
L = 2.0  //in meter
m = 12  //in kg
k = 1300  //in N/m

//Sample Problem 16-6
printf("**Sample Problem 16-6**\n")
//I*a/L = -k*x*L
I = m*L^2/3
w = sqrt(k*L*L/I)
T = 2*%pi/w
printf("The time period of oscillation is %fs", T)