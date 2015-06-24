//Given that
L = 12.4*10^-2  // in meter
m = 135*10^-3  //in kg
Ta = 2.53  //in sec
Tb = 4.76  //in sec

//Sample Problem 16-4
printf("**Sample Problem 16-4**\n")
//Time period is directly proportional to the squre root of rotational inertial
Ia = m*L^2/12
I = Ia*(Tb/Ta)^2
printf("The rotational inertail of X is %ekg.m^2", I)