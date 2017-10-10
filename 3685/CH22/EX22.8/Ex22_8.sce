clc
// Given that
lambda = 2 // Mean free path in cm
T = 300 // Temperature in K
r = 0.5 // As half of the molecules did not make any collision
printf("\n Example 22.8 \n")
x = lambda*(log(1/r))
v = 445.58 // For oxygen at 300K in m/s
t = x/(v*100)
printf("\n Time = %e s",t)

