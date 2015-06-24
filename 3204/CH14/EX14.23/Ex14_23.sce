// Initilization of variables
P=40 // N // weight on puley r_1
Q=60 // N // weight on pulley r_2
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// The eq'n for acceleration of pulley Pi.e a_p is,
a_p=(((2*P)-(Q))/((4*P)+(Q)))*2*g // m/s^2
// Results
clc
printf('The downward acceleration of P is %f m/s^2 \n',a_p)
