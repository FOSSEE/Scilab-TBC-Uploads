exec('degree_rad.sci', -1)

//Given that
lambda = 650*10^-9  //in meter
theta = dtor(15)  //in radians

//Sample Problem 37-1a
printf("**Sample Problem 37-1a**\n")
//We know that [a*sin(theta) = m*lambda] for m=Integer
m = 1
a = m*lambda/sin(theta)
printf("The slit width is equal to %fnm\n", a*10^9)

//Sample Problem 37-1b
printf("\n**Sample Problem 37-1b**\n")
m = 3/2  //for first side maxima
lambdaDESH = a*sin(theta)/ m
printf("The wavelength of the light is equal to %fnm", lambdaDESH*10^9)