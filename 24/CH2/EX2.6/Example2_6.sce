//Given that
g = -9.8   //in m/sec^2
displacement = -48  //in meter

//Sample Problem 2-6a
printf("**Sample Problem 2-6a**\n")
//using newton's  equation of motion
//displacement = 0 * t + .5 * g * t * t
//displacement = .5 * g * t * t
time = sqrt(displacement/(.5 * g))
printf("The time taken to reach at the ground is %f sec\n", time)

//Sample Problem 2-6b
printf("\n**Sample Problem 2-6b**\n")
t = poly(0,'t');
dis_t = 0 * t + .5 * g *t * t
ds = horner(dis_t,[1,2,3])
printf("The displacements at times 1,2,3 sec in meter is")
disp(ds)

//Sample Problem 2-6c
printf("\n**Sample Problem 2-6c**\n")
//using newton's first equation of motion v = u + a*t
velocity = 0 + g * time
printf("The velocity at water surface is equal to %f km/h\n", velocity)

//Sample Problem 2-6d
printf("\n**Sample Problem 2-6d**\n")
//using newton's first equation of motion
v_at_time_t = 0 + g * t
velocities = horner(v_at_time_t,[1,2,3])
printf("The velocitis at times 1,2,3 sec in m/s is")
disp(velocities)