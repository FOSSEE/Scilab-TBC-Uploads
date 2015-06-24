exec("degree_rad.sci",-1)

//Given that
displacement_vector = [-2.6,-3.9,.025]    //each in km

//Sample Problem 3-3
printf("**Sample Problem 3-3**\n")
mag = norm(displacement_vector)
sw_angle = atan(displacement_vector(2)/displacement_vector(1))
up_angle = displacement_vector(3)/norm(displacement_vector)
printf("The team displacement vector had a magnitude %f km,\n and was at an angle of %d south of west and\n at an angle of %f upward", mag, rtod(sw_angle), rtod(up_angle))