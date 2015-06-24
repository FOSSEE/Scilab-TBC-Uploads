//Example 6.2, page 210
clc
//KE=4ev, convert to joule
KE=4*1.6*10^-19//in j
m=9*10^-31//in kg
h=10^-34//in j-s
delta_x=(h)/sqrt(2*m*KE)
printf("\n Value of penetration distance is  %e m ",delta_x)