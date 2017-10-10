//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
v=3//tonf
p1=6.0//tonf,compressive
p2=5.19//tonf,tensile
a=30//degree
b=60//degree
p3=7//tonf,compressive
//CALCULATIONS
P1=p2*sind(b)//tonf,tensile
P2=1/2*P1//tonf,compressive
P3=p1*cosd(a)-p3*cosd(b)//tonf,compressive
P4=P1*cosd(a)*sqrt(3)/P3//tonf,acting towards the left 
R=P1*sind(a)//tonf,acting downwards
D=sqrt((P4)^2+(R)^2)//tonf
T=(R/P4)//to the horizantal
//RESULTS
printf('the direction reaction=% f to the horizantal',D)
printf('the direction reaction =% f to horizantal',T)
