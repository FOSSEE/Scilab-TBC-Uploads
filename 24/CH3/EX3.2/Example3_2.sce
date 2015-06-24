exec('degree_rad.sci', -1)

//Given that
dis = 215  //in km
position = [dis * cos(dtor(22)), dis * sin(dtor(22))]

//Sample Problem 3-2
printf("**Sample Problem 3-2**\n")
printf("The plane is %f km in the north & %f in the east", position(1),position(2))