exec('degree_rad.sci', -1)

//Given that
lambda =  22*10^-12  //in meter
conv = 1.6*10^-19  //ev to J conversion factor
E = 56*10^3*conv
theta = dtor(85)  //in rad
h = 6.62*10^-34  //in J.s
Me = 9.1*10^-31  //in kg
c = 3*10^8  //in m/s

//Sample Problem 39-4a
printf("**Sample Problem 39-4a**\n")
deltaL = h/(Me*c)*(1 - cos(theta))
printf("compton shift is equal to %1.2fpm\n", deltaL*10^12)

//Sample Problem 39-4b
printf("\n**Sample Problem 39-4b**\n")
frac = deltaL/(lambda + deltaL)
printf("The fraction of energy transfered is %1.3f", frac)