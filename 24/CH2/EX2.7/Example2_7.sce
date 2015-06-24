//Given that
g = -9.8   //in m/sec^2
v_initial = 12  //in m/s
v_final = 0  //at maximum height velocity equal to zero

//Sample Problem 2-7a
printf("**Sample Problem 2-7a**\n")
//using newton'd first equation of motion
// v_final = v_initial + g * t
h_max_time = (v_final - v_initial)/g
printf("After %f sec, the ball will attain its maximum height\n", h_max_time)

//Sample Problem 2-7b
printf("\n**Sample Problem 2-7b**\n")
//using newton's second equation of motion
h_max = (v_final^2 - v_initial^2)/(2 * g)
printf("The maximum height reached by the baseball is %f m\n", h_max)

//Sample Problem 2-7c
printf("\n**Sample Problem 2-7c**\n")
displacement = 5
t = poly(0,'t')
quad_t = v_initial * t + .5 * g * t * t - displacement
t_5 = roots(quad_t)
printf("At following times in sec, the ball will be at height 5m")
disp(t_5)