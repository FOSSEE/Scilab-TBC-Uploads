exec("degree_rad.sci",-1)

//Given that
a = [4.2,-1.5]
b = [-1.6,2.9]
c = [0,-3.7]

//Sample Problem 3-4
printf("**Sample Problem 3-4**\n")
r = a + b + c
magnitude = norm(r)
angle = rtod(atan(r(2)/r(1)))
printf("The magnitude of the vector is %f m & the angle measured from the x axis is %f", magnitude, (angle) )