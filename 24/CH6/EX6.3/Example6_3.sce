exec("degree_rad.sci",-1)

//Given that
theta = dtor(13)

//Sample Problem 6-3
printf("**Sample Problem 6-3**\n")
//N = mg cos(theta)
//f_s = mg sin(theta)
//dividing->
//f_s/N = tan(theta)
mu_s = tan(theta)
printf("The value of coefficient of static friction is %f", mu_s)