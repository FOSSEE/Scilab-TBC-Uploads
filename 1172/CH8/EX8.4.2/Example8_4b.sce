clc
//Given that
t1 = 1 // time period of satellite s1 in hour
t2 = 8 // time period of satellite s2 in hour
r1 = 1.2e4 // radius of orbit of satellite s1 in km

// sample problem 4b page No. 300
printf("\n\n\n # Problem 4b # \n")

printf("Standard formula r2/r1 = (t2/t1)^(2/3)")
r2 = r1 * (t2/t1)^(2/3) // calculation of radius of orbit of satellite s2 in km
v1 = 2 * %pi * r1 / t1 // calculation of speed of satellite s1 in km/h
v2 = 2 * %pi * r2 / t2 // calculation of speed of satellite s2 in km/h
del_v = v2 - v1 // calculation of relative speed of satellites in km/h
del_r = r2 - r1 // calculation of closest distance between satellite s1 and s2 
v_angular = del_v / del_r // calculation of angular speed in rad/h
printf (" \n Relative angular speed of satellite s2 for satellite s1 is %e rad/h.", v_angular)

