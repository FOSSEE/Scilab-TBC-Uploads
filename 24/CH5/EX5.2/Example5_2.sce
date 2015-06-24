exec("degree_rad.sci",-1)

//Given that
mass = 2  //in kg
acceleration = 3 * [cos(dtor(50)),sin(dtor(50))]  //in m/s^2
F1 = 10 * [cos(dtor(180+30)),sin(dtor(180+30))]   //in N
F2 = 20 * [0,1]    //in N

//Sample Problem 5-2
printf("**Sample Problem 5-2**\n")
//from newton's first law
//F1 + F2 + F3 = mass * acceleration
F3 =  mass * acceleration - F2 - F1
printf("The third Force vector F3 in N is")
disp(F3)
printf("The magnitude F3 is %f m/s\n", norm(F3))
printf("The angle made by F3 with the x axis in degrees %f", rtod(atan(F3(2)/F3(1))))