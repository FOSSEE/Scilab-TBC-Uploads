exec("degree_rad.sci", -1)

//Given that
m = 15  //in kg
g = 9.8  //in m/s^2
T = m* g* sin(dtor(27))
N = m* g* cos(dtor(27))

//Sample Problem 5-7a
printf("**Sample Problem 5-7a**\n")
printf("The tension in the chord is %f N\n", T)
printf("The Normal force is %f N\n", N)

//Sample Problem 5-7b
printf("\n**Sample Problem 5-7b**\n")
a = g * sin(dtor(27))
printf("The acceleration of block after cutting the chord is %f m/s^2", a)