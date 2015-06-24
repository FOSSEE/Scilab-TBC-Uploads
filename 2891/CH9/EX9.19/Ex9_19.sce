//Exa 9.19
clc;
clear;
close;
// given :
d=500 // distance between transmitter and receiver in km
h=70 // height of D layer in km
theta_c=asind(h/(sqrt(h^2+(d^2/4)))) // critical angle in degrees
disp(theta_c,"critical angle of propagation in degrees:")



//it can also be calculated from
theta_c=atand(2*h/d) // critical angle in degrees
disp(theta_c,"critical angle of propagation in degrees by method 2:")
