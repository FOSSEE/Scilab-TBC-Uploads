clear all; clc;
disp("Ex 11_6")
//From the potential function analysis and te equilibrium analysis
m=69.14/10.58
printf('\n\n m = %0.2f kg',m)
//Second derivative of V w.r.t. theta at m=6.53 kg and theta=20 degrees is:
theta=20*%pi/180
a=(-73.6*sin(theta))-((m*9.81*-1*(-3.6*cos(theta))^2)/(2*2*(3.69-(3.6*sin(theta)))^(3/2)))-((m*9.81*-3.6*sin(theta))/(2*sqrt(3.69-(3.6*sin(theta)))))
printf('\n\n The second derivative of V w.r.t. theta at m=6.53 kg and theta=20 degrees is -%0.1f',a)
disp("Unstable equilibrium at theta = 20 degress")
