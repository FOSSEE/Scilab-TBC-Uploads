//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
R=24.4//tonf
x=9.7//ft
M=124//tonf ft
h=5//in
q=14//in
w=20//in
h1=6//in
p=3//in
g=10//in
//CALCULATIONS
Ra=h*q/w//tonf
Mc=Ra*h1//tonf ft
Rb=p*h1/w*q //tonf ft
RB=w*g-(2*g^2/2)//tonf ft
//RESULTS
printf('the tonf load alone=% f tonf ft',RB)
