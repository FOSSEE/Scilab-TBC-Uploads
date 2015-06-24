//Given that
r = 15  //in meter
g = 9.8  //in m.s^2
a = 11 * g  //in m.s^2

//Sample Problem 11-4a
printf("**Sample Problem 11-4a**\n")
w = sqrt(a/r)
printf("The angular speed should be %frad/s\n", w)

//Sample Problem 11-4b
printf("\n**Sample Problem 11-4b**\n")
t = 120  //in sec
alpha = w/t
at = alpha*r
printf("The tangential acceleration will be %fm/s^2", at)