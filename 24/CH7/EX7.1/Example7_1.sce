exec("degree_rad.sci",-1)

//Given that
weight_locomotive = 1.2 * 10^6 //Ng = 9.8  //in m/s^2
acceleration = 0.26 //m/s^2
v_final = 0  //m/s
distance = 3.2 * 10^3  //m
g = 9.8  //in m/s^2

//Sample Problem 7-1
printf("**Sample Problem 7-1**\n")
//using newton's second equation of motion
v_initial = sqrt(v_final^2 + 2 * acceleration * distance)
total_kinetic_energy = 2 * .5 * weight_locomotive/g * v_initial^2
printf("The total kinetic energy of two locomotive just before the collision is %e J", total_kinetic_energy)