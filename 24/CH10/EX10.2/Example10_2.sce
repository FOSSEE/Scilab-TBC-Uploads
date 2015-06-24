//Given that
M = 5.4  //in kg
m = 9.5* 10^-3  //in kg
g = 9.8  //in m/s^2
h = 6.3* 10^-2  //in meter

//Sample Problem 10-2
printf("**Sample Problem 10-2**\n")
//Mechanical energy conservation-
//0.5*(M+m)*Va^2 = (M+m)*g*h
Va = sqrt(g*h/0.5)
//Momentum conservation for the collision
Vb = (M+m)*Va/m
printf("The velocity of the bullet before collision is %fm/s", Vb)