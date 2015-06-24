//Given that
g = 9.8  //in m/s^2
mass = 1600  //in kg
v_cons = 20  //in m/s
R_track = 190  //in meter

//Sample Problem 6-9
printf("**Sample Problem 6-9**\n")
N = mass * g
f_s = mass * v_cons^2 /R_track
mu_s = f_s/N
printf("The coefficient of static friction for the given surface is %f", mu_s)