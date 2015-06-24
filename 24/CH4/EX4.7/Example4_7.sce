exec("degree_rad.sci",-1)

//Given that
range_x = 560   //in m
v0_mag = 82     //in m/sec
g = -9.8    //in m/s^2

//Sample Problem 4-7a
printf("**Sample Problem 4-7a**\n")
theta = .5 *asin(-g* range_x/v0_mag^2)
printf("The angle at which the ball be fired to hit the ship is %f degrees or %f\n", rtod(theta), (90 - rtod(theta)))

//Sample Problem 4-7b
printf("\n**Sample Problem 4-7b**\n")
//Range is maximum when theta = 45 degree
R_max = -v0_mag^2/g
printf("The maximum possible range is %f m", R_max)