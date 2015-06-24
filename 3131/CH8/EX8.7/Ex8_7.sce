clear all; clc;
disp("Ex 8_7")
// Summing moments about A and equating to zero
a=7*%pi/180//angle in radian
NB=(4905*0.5)/(cos(a)+(0.3*sin(a)))
printf('\n\n NB = %0.1f N',NB)
//Summing forces in Y direction
NC=(NB*cos(a))+(0.3*NB*sin(a))
printf('\n\n NC = %0.1f N',NC)
//Summing forces in X direction
P=(0.3*NC)+(0.3*NB*cos(a))-(NB*sin(a))
b=P/1000
printf('\n\n P = %0.1f N = %0.2f kN',P,b)
