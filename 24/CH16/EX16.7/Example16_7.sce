//Given that
m = 250*10^-3  //in kg
k = 85  //in N/m
b = 70*10^-3  //in kg/s\
g = 9.8  //in m/s^2

//Sample Problem 16-7a
printf("**Sample Problem 16-7a**\n")
T = 2*%pi*sqrt(m/k)
printf("The time period of oscillation is %fs\n", T)

//Sample Problem 16-7b
printf("\n**Sample Problem 16-7b**\n")
//b*t/(2*m) = log(2)
t = log(2)*2*m/b
printf("The time taken to drop the amplitude half of its value is %fs\n", t)

//Sample Problem 16-7c
printf("\nb**Sample Problem 16-7c**\n")
//amplitude should drop to A/sqrt(2) from A
tE = t/2
printf("The time taken to drop the mechanical energy half of its initial value is %fs", tE)