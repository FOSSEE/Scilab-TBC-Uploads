// Initilization of variables
P=50 // N // Weight of the car
Q=100 // N // Weight of the rectangular block
g=9.81 // m/s^2 // acc due to gravity
b=25 // cm // width of the rectangular block
d=50 // cm // depth of the block
// Calculations
a=(Q*g)/(4*P+2*Q) // m/s^2 // from eq'n 4
W=(Q*(P+Q))/(4*P+Q) // N // from eq'n 6
// Resuts
clc
printf('The maximum value of weight (W) by which the car can be accelerated is %f N \n',W)
printf('The acceleration is %f m/s^2 \n',a)
