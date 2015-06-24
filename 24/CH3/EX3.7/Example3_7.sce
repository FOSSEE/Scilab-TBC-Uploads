exec("degree_rad.sci",-1)
exec("cross_product.sci",-1)

//Given that
a = [18 * cos(dtor(250)), 18 * sin(dtor(250)),0]
b = [0,0,12]

//Sample Problem 3-7
printf("**Sample Problem 3-7**\n")
cross_ab = crossproduct(a,b)
angle_x = acos(cross_ab(1)/norm(cross_ab))
printf("The magnitude of cross product of given vectors is %f \n and angle  with the x axis in degrees is %f", norm(cross_ab),rtod(angle_x))