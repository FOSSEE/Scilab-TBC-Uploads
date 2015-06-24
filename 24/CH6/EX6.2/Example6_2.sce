exec("degree_rad.sci",-1)

//GIven that
g = 9.8  //in /s^2
mass = 75  //in kg
mu_k = 0.10
phi = dtor(42)

//Sample Problem 6-2a
printf("**Sample Problem 6-2a**\n")
//T * cos(phi)- mu_k * N = 0
//T * sin(phi) + N = mass * g
mat_A = [cos(phi),-mu_k;sin(phi),1]
mat_B = [0 ;mass * g]
F = inv(mat_A) * mat_B
printf("The Tension in the string is %f N\n", F(1))

//Sample Problem 6-2b
printf("\n**Sample Problem 6-2b**\n")
printf("The force of friction will not change")