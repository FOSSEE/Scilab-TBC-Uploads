//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
//speed and clutch will begin to transmit power and horsepower
clc
//initialisation of variables
w=4//lbf
r=60//lbf/in
d=13//in
g=32.2//in
p=500//rev/min
h=0.25//in
b=5//in
q=1//in
f=62.2//lbf
V=31.1//rad/s
k=6.5//in
s=33000//ft
//CALCULATIONS
W=f/2//rad/s
F=(w*w/g)*(p*(2*%pi/r))^2*1/2//lbf
N=F-w*r//lbf
T=N*h*k/12//lbf ft
H=2*%pi*p*T/s//lbf ft
//RESULTS
printf('The speed and clutch will begin to transmit power =% f rad/s',W)
printf('the horsepower transmitted =% f',H)
