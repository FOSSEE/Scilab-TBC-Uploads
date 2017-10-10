//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
h=12//in
q=14//in
w=12500//in
p=2.5//in
m=0.067//in
t=2240//in
n=2.5*10^-5//in
//CALCULATIONS
R=(p*h*q)/(w)//in
I=(1*m^3/h)//in
M=((w*n)/(p*h)*t)//lbf in
//RESULTS
printf('the bending moment set up=% f lbf in',M)
