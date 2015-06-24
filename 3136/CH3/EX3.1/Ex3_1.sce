clear all; clc;
//This numerical is Ex 3_1E,page 43.
N=800
Q=1750//in gallon per minute
r_1=3
b_1=4
r_2=9
b_2=3

omega=N*%pi/30
printf('\n The angular velocity is %g rad/s',omega)
omega_r=83.7
disp("After rounding off the value of angular velocity is 83.7 rad/s")


U_1=omega_r*r_1/12
printf(' U_1=%g',U_1)
disp("After rounding off the value of U_1 is 20.9 ft/s")
U_1r=20.9//rounded value of U1


U_2=omega_r*r_2/12
printf(' U_2=%g',U_2)
disp("After rounding off the value of U_2 is 62.7 ft/s")


A_1=2*%pi*r_1*b_1/144
printf(' A_1=%g ft^2',A_1)
disp("After rounding off the value of A_1 is 0.523 ft^2")

A_2=2*%pi*r_2*b_2/144
printf(' A_2=%g ft^2',A_2)
disp("After rounding off the value of A_2 is 1.18 ft^2")
A_1r=0.523//rounded off
A_2r=1.18//rounded off


V_r1=(Q*0.00223)/(A_1r)
printf(' The value of V_r1 is %g',V_r1)
disp("The value of V_r1 after rounding off is 7.47 ft/s")

V_r2=(Q*0.00223)/(A_2r)
printf(' The value of V_r2 is %g',V_r2)
disp("The value of V_r2 after rounding off is 3.27 ft/s")//actual value is 3.30,however the value given in the book is 3.27 ft/s


