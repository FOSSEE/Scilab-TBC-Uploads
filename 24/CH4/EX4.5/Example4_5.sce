exec("degree_rad.sci",-1)

//Given that
velocity_v0 = [-2,4]   //in m/s
acceler_a = [3 *cos(dtor(130)), 3 *sin(dtor(130))]   //in m/sec^2
time_t = 5   //in sec

//Sample Problem 4-5
printf("**Sample Problem 4-5**\n")
//using newton's first equation of motion v = u + a *t
velocity_t = velocity_v0 + acceler_a * time_t
printf("The velocity vector of the particle at t=5sec in m/s is")
disp(velocity_t)
printf("The magnitude of the velocity vector is %f m/s\n", norm(velocity_t))
printf("The angle made by the velocity vector with the x axis in degrees at the same time %f", rtod(atan(velocity_t(2)/velocity_t(1))))