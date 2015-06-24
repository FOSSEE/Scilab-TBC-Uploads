exec("degree_rad.sci",-1)

//Given that
v_rescue = [55,0]   //in m/s
dis_y = -500    //in m
g = -9.8    //in m/s^2

//Sample Problem 4-6a
printf("**Sample Problem 4-6a**\n")
//using newton's second equation of motion
time = sqrt(2 *dis_y /g)
dis_x = v_rescue(1) *time
printf("The angle of the piliots line of sight to the victim %f degrees\n",rtod(atan(-dis_x/dis_y)))

//Sample Problem 4-6b
printf("\n**Sample Problem 4-6b**\n")
u_initial = v_rescue
//using newton's first equation of motion
v_final = u_initial + [0,g] * time
printf("The velocity vector of the capsule near water in m/s is")
disp(v_final)
printf("The magnitude of the velocity vector is %f m/s\n", norm(v_final))
printf("The angle made by the velocity vector with the x axis in degrees at the same time %f", rtod(atan(v_final(2)/v_final(1))))