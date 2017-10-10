//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
//Work done against gravity
clc
clear all
//initialisation of variables
r=1500//yd
w=200//tonf
v=25//lbf/tonf
V=56.8//ft/s
p=550//ft
t=80//ft
h=2240//ft/s
//CALCULATIONS
R=v*w//lbf
W=26.5*10^6//ft lbf
D=v*w*V//ft lbf
H=(v*w*V)/p//ft
W1=W/((v*w)*(w*h*1/180))*1000//ft
//RESULTS
printf('the Work done against gravity is=% f ft',W1)
