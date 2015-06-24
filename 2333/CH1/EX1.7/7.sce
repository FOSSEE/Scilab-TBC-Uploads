clc
// given that
del_D = 300 // Separation in distance in m
del_t = 4e-7 // separation in time in sec
c = 3e8 // speed of light in m/s
// Problem 7 on page 25
printf("\n # Problem 7 # \n")
v = del_t*c^2/del_D // velocity of one w.r.t other in m/s
printf("\n Velocity of one w.r.t other is %f*c m/s.",v/c)
