exec("degree_rad.sci",-1)

//Given that
m1 = 4  //in kg
m2 = 8  //in kg
m3 = 4  //in kg
F1 = [-6, 0]
F2 = [12*cos(dtor(45)), 12*sin(dtor(45))]
F3 = [14, 0]

//Sample Problem 9-3
printf("**Sample Problem 9-3**\n")
aC = (F1 + F2 + F3)/(m1 + m2+ m3)
printf("The acceleration of center of mass is %fm/s^2 at \nan angle of %f degrees to the positive x-axis", norm(aC), rtod(atan(aC(2)/aC(1))))