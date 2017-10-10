//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
h=6//in
h1=4//in
d=5000//kilowatt
g=2500//rev/min
f=8//in
l=20//in
G=12*10^6//lbf/in^2
p=746//watts
w=1000//in
q=33000//in
j=102.2//in^4
t=12//in
k=180//in
//CALCULATIONS
S=(d*w/p)//hp
T=((q*S)/(2*%pi*g))//lbf ft
Q=(t*T/j)*3//lbf/in^2
F=f*Q//lbf/in^2
A=((t*T*l*h*k)/(G*j*%pi))//degree
//RESULTS
printf('the angle of twist=% f degree',A)
