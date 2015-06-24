exec("degree_rad.sci",-1)

//GIven that
F_A = 220 * [cos(dtor(180-47)),sin(dtor(180-47))]   //in N
F_B_dir =  [0,-1]
F_C_mag = 170  //in N

//Sample Problem 5-3
printf("**Sample Problem 5-3**\n")
//net sum of three forces must be zero
phi = acos(- F_A(1) / F_C_mag)
F_B_mag = F_C_mag * sin(phi) + F_A(2)
printf("The magnitude of Bettys force is %f N", F_B_mag)