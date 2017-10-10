//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
//distance travelled along incline before coming to rest
clc
//initialisation of variables
w1=10//tonf
r=36//in
w=1/4//tonf
g=14//in
t=30//mile/h
s=100//in
m=20//lbf/tonf
h=2240//lbf
q=44//in
g1=32.2//ft
//CALCULATIONS
K=(w1*h*(q^2))/(2*g1)//ft lbf 
L=q/1.5//rad/s
R=(2*1/2*(1/4*h/g1)*(g/12)^2)*L^2//ft lbf
T=K+R//ft lbf
M=m*w1//lbf
G=w1*h*(1/s)//lbf
S=K/(M+G)//ft
//RESULTS
printf('the distance travelled along incline before coming to rest=% f ft',S)
