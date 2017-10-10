//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
//maximum velocity of speed 
clc
//initialisation of variables
a=30//degree
w=20//lbf
m=150//ft
v=18.6//ft/s^2
//CALCULATIONS
A=sqrt(m/(1/2)/v)//sec
V=sqrt(2*v*m)//ft/s
//RESULTS
printf('the maximum velocity of speed after=% f ft/s',V)
