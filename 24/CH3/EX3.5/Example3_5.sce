exec("degree_rad.sci",-1)

//Given that
a = [36,0]   //in km
c = [25 *cos(dtor(135)), 25 *sin(dtor(135))]   //in km
d_mag = 62  //in km

//Sample Problem 3-5
printf("**Sample Problem 3-5**\n")
//we have a + b + c = d
//therefore ax = bx + cx + dx
// bx = 0
d_x = a(1) + c(1)
d_y = d_mag * sqrt(1 - (d_x/d_mag)^2)
d = [d_x, d_y]
b = d(2) - a(2) - c(2)
printf("The magnitude of b is equal to %f km", b)