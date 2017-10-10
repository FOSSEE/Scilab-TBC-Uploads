//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
v=(60*2*%pi)/60*8/12//ft/s
x=8//in
y=12//in
c=4.76//in
b=4.13//in
e=10.0//in
w=12.0//in
f=3.55//in
q=6.08//in
k=1.95//in
h=2.35//in
//CALCULATIONS
V1=v*(c/b)//ft/s
V2=V1*(e/w)//ft/s
V3=V2*(f/q)//ft/s
K=V3*(k/h)//ft/s
F=f*(x/y)//ft
L=(F*y)/(f*x)//rad/s
//RESULTS
printf('the angular velocity length=% f rad/s',L)
