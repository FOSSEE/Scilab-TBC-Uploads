//Given that
Radius_earth = 6.37 * 10^6
h_alti = 520 * 10^3  //in meter
velocity = 7.6 * 10^3  //in m/s converted from km/s
mass = 79  //in kg

//Sample Problem 6-6a
printf("**Sample Problem 6-6a**\n")
acce = velocity^2/(h_alti + Radius_earth)
printf("The acceleration is equal to %f m/s^2\n", acce)

//Sample Problem 6-5b
printf("\n**Sample Problem 6-6b**\n")
Force_total  = mass * acce
printf("The net force is equal ro %f N", Force_total)