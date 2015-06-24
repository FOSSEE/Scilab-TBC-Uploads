clc
// given data
rho=996 // density in kg/m^3
effi=0.55 // oveall efficiency
Q=100/1000.0 // discharge in m^3/sec
h=30 // gross head in m
g=9.81 // gravitational acceleration in m/sec^2


Pnet=effi*rho*Q*g*h/1000 // net power in watts
printf("Power available is %.2f kilowatts",Pnet)
