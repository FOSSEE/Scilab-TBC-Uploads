clc
//initialisation of variables
p=85//lb/in^2
h=210//i.p.m
h1=8//in
h2=2.5//in
h3=20//in
x=0.75//in
p1=100//ln/in^2
x1=33000//in
p2=15//lb/in^2
v2=%pi/4*(h1/12)^2*(h3/12)//ft^3
A=144*[29.08*1.6931-8.724]//ft/lb
d=x*A//ft/lb
v3=0.5816//ft^3
P=d/(144*v3)//lb/in^2
P1=%pi/4*64//in^2
r=25*%pi/16//in^2
//CALCULATIONS
H=P*(h3/12)*P1*h/(x1)
I=(P*(h3/12)*(P1-r)*h)/(x1)//I.h.P
T=H+I//I.h.p
//RESULTS
printf('the h.p diameter of the piston and piston rod =% f I.h.p',T)
