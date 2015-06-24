exec("Example4_2a.sce",-1)
clc

//Sample Problem 4-3
printf("\n**Sample Problem 4-3**\n")
velocity_v_x = derivat(x)
velocity_v_y = derivat(y)
v_time_t = [horner(velocity_v_x,time_t),horner(velocity_v_y,time_t)]
printf("The velocity vector of the rabbit at t=15sec in m/s is")
disp(v_time_t)
printf("The magnitude of the velocity vector is %f m/s\n", norm(v_time_t))
printf("The angle made by the velocity vector with the x axis in degrees at the same time %f", rtod(atan(v_time_t(2)/v_time_t(1))))