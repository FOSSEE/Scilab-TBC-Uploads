//Given that
x0 = -8.50*10^-2  //in m
v0 = -0.920  //in m/s
a0 = 47  //in m/s^2
exec('degree_rad.sci', -1)

//Sample Problem 16-2a
printf("**Sample Problem 16-2a**\n")
w = sqrt(-a0/x0)
printf("The angular frequency of SHM is equal to %frad/s\n", w)

//Sample Problem 16-2b
printf("\n**Sample Problem 16-2b**\n")
phi = atan(-(v0/x0)/w)
A = x0/cos(phi)
printf("The value of phi is %f degrees\n", rtod(phi))
printf("The maximum value of displacement is equal to %fcm\", A*100)