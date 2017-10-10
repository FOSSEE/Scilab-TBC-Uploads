//Solutions to Problems In applied mechanics
//A N Gobby
clear all;

clc
//initialisation of variables
w=30//mile/h
r=500//ft
h=2240//ft
q=44//ft
t=(88/60)//ft
g=32.2//ft
//CALCULATIONS
Tan=(w*t)^2/(g*r)
W=h*cosd(Tan)+(h*(q)^2*sind(Tan))/(g*r)//lbf
//RESULTS
printf('the car and resolve forces normal and parallel to the slope=% f',Tan)
printf('the total normal reaction =% f lbf',W)
