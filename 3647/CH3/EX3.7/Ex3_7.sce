//Solutions to Problems In applied mechanics
//A N Gobby
clear all;

clc
//initialisation of variables
h=5//ft
h1=3//ft
r=200//ft
f=0.5//ft
v=60//ft/s
w=62.0//ft/s
q=1.5//ft/s
g=32.2//ft
//CALCULATIONS
V=sqrt(q)/(w/(g*r))/2//ft/s
F=sqrt(f*g*r)//ft/s
T=(v)^2/(g*r)//degree
//RESULTS
printf('The value of the speed=% f ft/s',V)
printf('The block is on the point of overturning =% f ft/s',F)
printf('the centrifugal force must just be equal to the frictional force=% f degree',T)
