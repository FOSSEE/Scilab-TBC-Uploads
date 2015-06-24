exec("degree_rad.sci",-1)

//Given that
m = .20   //in kg
F_1 = 4 * [1,0]
F_2 = 2 * [-1,0]
F_3 = 1 * [cos(dtor(30)),sin(dtor(30))]

//Sample Problebb  nmkn nm 5-1
printf("**Sample Problem 5-1**\n")
acceleration_a = F_1(1)/m
acceleration_b = F_2(1)/m
acceleration_c = (F_2(1) + F_3(1))/m
printf("The acceleration of puck in case a is %d m/s^2\n",acceleration_a)
printf("The acceleration of puck in case b is %d m/s^2\n",acceleration_b)
printf("The acceleration of puck in case c is %f  m/s^2\n",acceleration_c)