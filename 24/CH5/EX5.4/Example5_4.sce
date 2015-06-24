exec("degree_rad.sci",-1)

//Given that
g = 10  //in m/s^2
mass = 80  //in kg
theta = 30  //in degrees
Force_applied = 2.5 * mass * g * [cos(dtor(theta)),sin(dtor(theta))]
W_car = 7 * 10^5  //in N
distance = 1  //in meter

//Sample Problem 5-4
printf("**Sample Problem 5-4**\n")
//using Newtons first law
acceleration = Force_applied(1) / (W_car /g)
//using newtons third equation of motion
v_final = sqrt(2 * acceleration * distance)
printf("The velocity after trevelling 1 m distance is %f m/s", v_final)