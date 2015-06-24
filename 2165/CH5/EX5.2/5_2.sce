clc
//initialisation of variables
h1=16//i.h.p
p1=100//lb/in^2
p2=15//lb/in^2
R=275//R.p.m
h=550//ft/min
q=33000//in^2
v1=4.85//lb
B=8.53//in
//CALCULATIONS
M=(p1/v1)-p2+(p1/v1-p2)*1/0.2
S=h/(2*R)//ft
I=(q*h1)/(M*S*R)//in^2
//RESULTS
printf('The effect of the clearance volume=% f in^2',I)
