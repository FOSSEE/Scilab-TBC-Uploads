//Given that
Bdot = 1.4/10^-3  //in T/m
w = 3.5*10^-2  //in m
v = 750  //in m/s
M = 1.8*10^-25  //in kg
u = 9.27*10^-24  //in J/T

//Sample Problem 41-1
printf("**Sample Problem 41-1**\n")
Fz = u*Bdot
a = Fz/M
t = w/v
d = 0.5*a*t^2
printf("The atoms have been deflected %e m", d)