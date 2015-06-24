//Given that
g = 9.8  //in m/s^2
m = 72.2  //in kg

//Sample Problem 5-8a
printf("**Sample Problem 5-8a**\n")
scale_read_b = m *g
printf("The reading of the scale in case a is %f ", scale_read_b)

//Sample Problem 5-8b
printf("**Sample Problem 5-8b**\n")
//N - mg = ma
a_U = 3.2  //in m/s^2
scale_read_c_U = m * (g + a_U)
printf("The reading of the scale in case b if cab moves upaward is %f\n", scale_read_c_U)
a_D = -3.2  //in m/s^2
scale_read_c_D = m * (g + a_D)
printf("The reading of the scale in case b if cab moves downaward is %f\n", scale_read_c_D)

//Sample Problem 5-8b
printf("\n**Sample Problem 5-8b**\n")
//using newtons second law => net force = mass * acceleration
F_net = m *a_U
printf("The net force on passenger during upward journey is %f N\n", F_net)
printf("The acceleration of passenger in the frame if cab is 0")