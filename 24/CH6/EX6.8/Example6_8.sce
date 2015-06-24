//Given that
g = 9.8  //in m/s^2
R = 2.1  //in m
mu_s = 0.40

//Sample Problem 6-8a
printf("**Sample Problem 6-8a**\n")
//N = mv^2/R
//mg = mu_s * N
//mg = mu_s * m*v^2/R
//v = sqrt(g*R/mu_s)
v_min = sqrt(g*R/mu_s)
printf("The minimum spped of the cylender should be %f m/s\n", v_min)

//Sample Problem 6-8b
printf("\n**Sample Problem 6-8b**\n")
mass = 49  //in kg
c_force = mass * v_min^2/R
printf("The Centripetal force on the rider would be %f N", c_force)