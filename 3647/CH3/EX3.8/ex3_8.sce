//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
w=20//cwt
q=3//ft
d=30//ft/ss
w1=4//ft
w2=6//in
h=2240//ft/s
g=32.2//ft
s=15//ft
f=4.5//ft
c=2.25//ft
//CALCULATIONS
T=(h*(d)^2/(g*s*q))//lbf
G=T*q//lbf ft
W=h*f/2//lbf ft
R=186.5//lbf
D=h-R//lbf
r=(q*h*d^2/(c*h)/g)//ft
//RESULTS
printf('the equal moment of the centrifugal force=% f ft',r)
