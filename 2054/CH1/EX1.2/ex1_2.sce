//Exam:1.2
clc;
clear;
close;
a=1;
b=1;
c=-30;
w_m=(-b+sqrt((b^2)-4*a*c))/(2*a);//speed of the drive
t_l=0.5*(w_m^2);//motoring torqe 
disp(t_l,w_m,'stable operating point=');