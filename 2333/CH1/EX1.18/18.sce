clc 
// Given that
t_ = 2.2e-6 // proper life of mu mesons in sec
c = 3e8 // Speed of light in m/s
v = 0.8*c // velocity of meson beam in m/sec
// Sample Problem 18 on page no. 36
printf("\n # PROBLEM 18 # \n")
printf(" Standard formula used \n")
printf(" t = t_0/((1-v^2/c^2)^1/2) \n s = v*t \n")
t = t_ / sqrt(1 - (v / c)^2)
d = t * v
printf("\n Distance travel by the beam is %e meter.",d)
