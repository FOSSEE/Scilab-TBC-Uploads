clc 
// Given that
t_ = 5e-8 // proper life of pi+ mesons in sec
c = 3e8 // Speed of light in m/s
v = 0.8*c // velocity of meson beam in m/sec
r = 1 / exp(2) // ratio of final flux to initial flux of the meson beam
// Sample Problem 17 on page no. 36
printf("\n # PROBLEM 17 # \n")
printf(" Standard formula used \n")
printf(" t = t_0/((1-v^2/c^2)^1/2) \n N = N_0*e^(-t/tau) \n")
t = t_ / sqrt(1 - (v / 3e8)^2)
T = t * log(1 / r)
d = T * v
printf("\n Distance travel by the beam is %f meter.",d)

