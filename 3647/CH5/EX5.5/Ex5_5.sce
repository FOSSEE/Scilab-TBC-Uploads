//Solutions to Problems In applied mechanics
//A N Gobby
clear all;

clc
//initialisation of variables
v=5//ft/s
f=0.5//in
e=5.27//in
w=1.98//in
k=2.96//in
x=1.7//in
h=3.4//in
i=7.2//in
d=0.76//in
Va=((200*2*%pi*1)/60)/7.75//rad/s
Vc=Va*i/k
//CALCULATIONS
F=f*v//ft/s
CE=(e*v)/4//rad/s
EF=w*v/3//rad/s
VCD=Va*i/k//rad/s
E=VCD*x/h//rad/s
V=E*d//ft/s
//RESULTS
printf('The velocity of F in=% f ft/s',F)
printf('The angular velocity of CE in=% f rad/s',CE)
printf('The angular velocity of EF=% f rad/s',EF)
printf('the velocity of link=% f rad/s',V)
