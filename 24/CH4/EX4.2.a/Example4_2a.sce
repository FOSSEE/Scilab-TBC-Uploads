exec("degree_rad.sci",-1)

//Given that
t = poly(0,'t')
x = -0.31 *t^2 + 7.2 *t +28  //in meter
y = 0.22 *t^2 - 9.1 *t + 30  //in meter

//Sample Problem 4-2a
printf("**Sample Problem 4-2a**\n")
time_t =15  //in sec
position_r = [horner(x,time_t),horner(y,time_t)]
printf("The position vector of the rabbit at t=15sec in meter is")
disp(position_r)
printf("The magnitude of the position vector is %f m\n", norm(position_r))
printf("The angle made by the position vector with the x axis in degrees at the same time %f", rtod(atan(position_r(2)/position_r(1))))