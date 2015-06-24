//Given that
l = 405*10^-9  //in meter
d = 19.44*10^-6  //in meter
a = 4.050*10^-6  //in meter

//Sample Problem 37-4a
printf("**Sample Problem 37-4a**\n")
n = floor(d/a)
printf("The number of bright fringes are %d\n", 2*n+1)

//Sample Problem 37-4b
printf("\n**Sample Problem 37-4b**\n")
num = ceil(2*d/a)
printf("The number of bright fringes within either of the first side peak is %d", num/2 - 1)