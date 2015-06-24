//Given that
m = 61  //in kg
Hi = 45  //in meter
L = 25  //in meter
k = 160  //in N/m
g = 9.8  //in m/s^2

//Sample Problem 8-4
printf("**Sample Problem 8-4**\n")
//Assume that the jumper goes x meter down the bridge
//Using energy conservation energy
s=poly(0,"s")
p = .5*k*(s-25)^2 - m*g*s  //equal to 0
x = roots(p)
printf("The height fell down is %fm", x(2))