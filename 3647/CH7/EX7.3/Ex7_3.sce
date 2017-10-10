//Solutions to Problems In applied mechanics
//A N Gobby
clear all;

clc
//initialisation of variables
p=8//ft
h=2//tonf/ft
a=3//tons/ft
b=11//ft
w=b*h//tonf
//CALCULATIONS
S=(h*b^2/h)/p//tonf
R=w-S//tonf
x=R/h//ft
M=(R*x)-((h*(x^2))/h)//tonf ft
N=-(h*a^2/h)//tonf ft
//RESULTS
printf('the maximum bending moment occurs=% f tonf ft',N)
