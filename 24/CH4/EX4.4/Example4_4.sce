exec("Example4_3.sce",-1)
clc

//Sample Problem 4-4
printf("\n**Sample Problem 4-4**\n")
acceler_x = derivat(velocity_v_x)
acceler_y = derivat(velocity_v_y)
a_time_t = [horner(acceler_x,time_t),horner(acceler_y,time_t)]
printf("The acceleration vector of the rabbit at t=15sec in m/sec^2 is")
disp(a_time_t)
printf("The magnitude of the acceleration vector is %f m/sec^2\n", norm(a_time_t))
printf("The angle made by the acceleration vector with the x axis in degrees at the same time %f", rtod(atan(a_time_t(2)/a_time_t(1))))