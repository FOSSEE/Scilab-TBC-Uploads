
clc; funcprot(0);
// Initialization of Variable
alpha=0.0;//degrees
theta=25+45.0/60;//latitude in degrees
//calculation
delta=asin(sin(alpha)/sin(theta*%pi/180));
disp(delta,"declination in degrees")
clear()
