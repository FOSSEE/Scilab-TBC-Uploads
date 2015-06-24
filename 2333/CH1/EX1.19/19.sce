clc 
 
// Given that
t_ = 5e-8 // proper life of +pi mesons in sec
c = 3e8 // Speed of light in m/s
v = 2.4e8 // velocity of meson beam in m/sec
// Sample Problem 19 on page no. 37
printf("\n # PROBLEM 19 # \n")
printf(" Standard formula used \n")
printf(" t = t_0/((1-v^2/c^2)^1/2) \n s = v*t \n")
t = t_ / sqrt(1 - (v / c)^2)
d = t * v
printf("\n Mean life of +pi meson is %e sec \n Distance travel by the beam is %f meter.",t,d)

