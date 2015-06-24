//Given that
M = 2.5  //in kg
R = 0.20  //i meter
m = 1.2  //in kg
g = 9.8  //in m/s^2
I = 0.5*M*R^2

//Sample Problem 11-7
printf("**Sample Problem 11-7**\n")
//mg - T = ma
//T*R = I*a/R
//T = I*a/R^2
//on adding =>
a = m*g/(m+I/R^2)
T = m*(g-a)
alpha = a/R
printf("The acceleration of the block is %fm/s^2\n", a)
printf("The angular acceleration of the pulley is %frad/s^2\n", alpha)
printf("The tension in the string is %fN", T)