clear all; clc;
//This numerical is Ex 3_1S,page 43.
N=800
Q=397//in meter cube per hour
r_1=7.6
b_1=10.2
r_2=22.9
b_2=7.6
omega=N*%pi/30
printf('The angular velocity is %g rad/s',omega)
omegar=83.7
disp("After rounding off the value of angular velocity is 83.7 rad/s")
U_1=omega*r_1/100
printf(' U_1=%g',U_1)
disp("After rounding off the value of U_1 is 6.36 m/s")
U_1r=6.36//rounded value of U1
U_2=omega*r_2/100
printf(' U_2=%g',U_2)
disp("After rounding off the value of U_2 is 19.2 m/s")
A_1=2*%pi*r_1*b_1
printf(' A_1=%g cm^2',A_1)
disp("After rounding off the value of A_1 is 487 cm^2")
A_2=2*%pi*r_2*b_2
printf(' A_2=%g cm^2',A_2)
disp("After rounding off the value of A_2 is 1093.5 cm^2")
A_1r=487//rounded off
A_2r=1093.5//rounded off
V_r1=(Q/3600)/(A_1r/10000)
printf(' The value of V_r1 is %g',V_r1)
disp("The value of V_r1 after rounding off is 2.26 m/s")
V_r2=(Q/3600)/(A_2r/10000)
printf(' The value of V_r2 is %g',V_r2)
disp("The value of V_r2 after rounding off is 1.01 m/s")


