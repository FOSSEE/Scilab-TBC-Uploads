//Given that
m = 1.3*10^-10  //in kg
Q = 1.5*10^-13  //in C
Vx = 18  //in m/s
L = 1.6*10^-2  //in meter
E = 1.4*10^6  //in N/C

//Sample Problem 23-4
printf("**Sample Problem 23-4**\n")
a = E*Q/m
t = L/Vx
dv = 0.5*a*t^2  //vertical drop
printf("The vertical drop of the drop is equal to %fmm", dv*10^3)