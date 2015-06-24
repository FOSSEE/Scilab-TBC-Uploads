exec("degree_rad.sci",-1)

//Given that
a = [3,-4,0]
b = [-2,0,3]

//Sample Problem 3-6
printf("**Sample Problem 3-6**\n")
angle_ab = acos(-norm(a*b')/(norm(a) * norm(b)))
printf("The angle between given vectors is %f degress", rtod(angle_ab))