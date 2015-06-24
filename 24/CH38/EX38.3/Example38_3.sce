//Given that
Lp = 230  ///in meter
t = 3.57*10^-6  //in meter
c = 3*10^8  //in m/s

//Sample Problem 38-3
printf("**Sample Problem 38-3**\n")
//y = 1/sqrt(1-r^2)
//L = Lp/y
//L = r*c*t
//solving -
r = Lp/sqrt((c*t)^2 + Lp^2)
printf("The relative velocoty is equal to %.3fc m/s", r)