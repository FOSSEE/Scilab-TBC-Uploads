//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
h=12//in
w=6//in
x=375.77//in^4
y=28.28//in^4
p=7//in
q=14//in
//CALCULATIONS
Ix=x+(p*q^3/h)-(p*h^3/h)//in^4
Iy=y+2*(1*p^3/h)//in^4
Zx=x/w//in^3
Zy=Ix/p//in^3
X=(Zy-Zx)/(Zx)*100//percent
//RESULTS
printf('the percentage increase in strength with respect to neutral=% f percent',X)
