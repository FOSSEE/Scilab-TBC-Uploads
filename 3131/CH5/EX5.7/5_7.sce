clear all; clc;
disp("Ex 5_7")
disp("Free body diagram is as shown in fig 5-15b")
a=600// Magnitude of force in Newton
t=45//inclination angle in degrees
theta=t*%pi/180//inclination angle in radians
disp("Summing moments about A:")
disp("100*(0.5)-T(0.5)=0")
disp("T=100 N")
disp("Summing forces in X-direction:")
disp("-A_x+T*sin30=0")
disp("A_x=50.0 N")
disp("Summing forces in Y-direction:")
disp("A_y-100-100*cos30=0")
disp("A_y=187 N")
