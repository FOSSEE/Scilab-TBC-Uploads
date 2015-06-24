
clc
//initialisation of variables
h=144//in
p1=100//psia
p2=54.5//psia
g=32.2//in
s=1.3//in
v=13.9//cu ft per lb
//CALCULATIONS
V=sqrt(p2*h*v*g*s)//ft per sec
//RESULTS
printf('the acoustic velocity=% f ft per sec',V)
