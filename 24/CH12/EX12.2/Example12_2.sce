exec('degree_rad.sci', -1)

//Given that
M = 6  //in kg
A = 30  //in degrees
h = 1.20  //in meter
g = 9.8  //in m/s^2
//Radius of the disk is equal to R

//Sample Problem 12-2a
printf("**Sample Problem 12-2a**\n")
//using mechanical energy conservation
//M*g*h = 0.5*I*w^2 + 0.5*M*v^2
//w = v/R
//I = (2/5)M*R^2
v = sqrt(M*g*h/(0.5*M*(2/5) + 0.5*M))
printf("The speed of the disk at the bottom is %fm/s\n", v)

//Sample Problem 12-2b
printf("\n**Sample Problem 12-2b**\n")
//at bottom
a = -g*sin(dtor(A))/(1+(2/5)*M/M)
fs = -(2/5)*M*a
printf("The frictinal force on the disk is equal to %fN", fs)