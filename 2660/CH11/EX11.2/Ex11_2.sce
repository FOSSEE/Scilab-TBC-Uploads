clc
// from figure 11.23
y1 = 0.15 // mu_m
y2 = 0.25 // mu_m
y3 = 0.35 // mu_m
y4 = 0.25 // mu_m
y5 = 0.30 // mu_m
y6 = 0.15 // mu_m
y7 = 0.10 // mu_m
y8 = 0.30 // mu_m
y9 = 0.35 // mu_m
y10 = 0.10 // mu_m
y1sqr = y1^2 // mu_m
y2sqr = y2^2// mu_m
y3sqr = y3^2 // mu_m
y4sqr = y4^2 // mu_m
y5sqr = y5^2 // mu_m
y6sqr = y6^2 // mu_m
y7sqr = y7^2 // mu_m
y8sqr = y8^2 // mu_m
y9sqr = y9^2 // mu_m
y10sqr = y10^2 // mu_m
n = 10
yn = (y1+y2+y3+y4+y5+y6+y7+y8+y9+y10)/n // arithmetic average in mu_m
rms = sqrt((y1sqr+y2sqr+y3sqr+y4sqr+y5sqr+y6sqr+y7sqr+y8sqr+y9sqr+y10sqr)/n) // r.m.s value in mu_m
printf("\n The arithmetic average = %0.2f*10^-6 m \n The r.m.s. value = %0.3f*10^-6 m",yn,rms)
