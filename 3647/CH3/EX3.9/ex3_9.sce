//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
l=3//ft
w=8//lbf
p=40//rev/min
q=6//ft
h=3.5//ft
g=32.2//ft
f=6//in
t=15.33//lbf
//CALCULATIONS
F=q/t//in/lbf
R=w*q/t//in
D=(h*w)/t*10//in
//RESULTS
printf('the distance horizantal circle=% f in',D)
