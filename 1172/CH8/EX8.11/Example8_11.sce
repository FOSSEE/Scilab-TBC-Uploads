clc
//Given that
r1 = 1e12 // distance of first planet from Sun in m
r2 = 1e13 //distance of first planet from Sun in m 
// sample problem 11 page No. 304
printf("\n\n\n # Problem 11 # \n")

printf("Standard formula used T^2 = k* r^3")
printf ("\n Standers formula used v = 2 * pi * r / T")
r_ratio = r1 / r2 // r_ratio is ratio of distances from Sun
T_ratio = r_ratio^(3/2) //calculation of Ratio of time period
v_ratio = r_ratio / T_ratio // calculation of ratio of speed

printf (" \n Ratio of time period is %f and ratio of speed is %f .", T_ratio, v_ratio)

