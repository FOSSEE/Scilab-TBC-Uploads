//Given that
height = 1.70  //in meter
elapsed_time = 11.1  //in sec

//Sample Problem 1-4
printf("**Sample Problem 1-4**\n")
//the angle between the two radius is
theta = elapsed_time / (24 * 3600) * %pi*2  //in radians
//we also have d^2 = 2 * r *h
//as d is very small hence can be considered as a arc
//d = r * theta
//=> r * theta^2 = 2 * h
radius = 2 * height /theta^2
printf("The radius of earth is %e m", radius)