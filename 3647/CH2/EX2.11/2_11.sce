//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//gravitational force
//initialisation of variables
v=35//hp
p=25//percent
v1=30//mile/h
q=28//in
d=30//in
w=3200//lbf
t=33000//lbf
s=88//in
W=w*(1/v1)//lbf
m=0.364//mile/h
//CALCULATIONS
N=(v1*s/60)/(14/12)*(60/(2*%pi))//rev/min
Ne=N*6//rev/min
E=(v*t)/(2*%pi*Ne)//lbf ft
T=(v*0.75*t)/(2*%pi*N)//lbf ft
P=T/(14/12)//lbf
V=sqrt((P-W)/m)//mile/h
//RESULTS
printf('the gravitational force=% f mile/h',V)
